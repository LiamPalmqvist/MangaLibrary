//
//  ContentView.swift
//  MangaLibrary
//
//  Created by Liam Palmqvist on 10/09/2024.
//

import SwiftUI
import UIKit
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \StoredBook.title, ascending: true)],
        animation: .default)
	private var items: FetchedResults<StoredBook>

	@State private var bookRequestResults: Book?
	@State private var authorRequestResults: Author?
	@State private var urlText: String = ""
	
    var body: some View {
		NavigationView {
			VStack {
				ForEach(items, id: \.self) { item in
					Text("\(item.title ?? "")")
				}
				
				Button {
					Task {
						do {
							// First request the books
							try WebRequester().fetchBookData(from: urlText, completion: { book in
								bookRequestResults = book
							})
						} catch {
							let _ = error.localizedDescription
						}
					}
				} label: {
					Text("Push to get webResult")
				}
				
				TextField("Input some text", text: $urlText)
				
				if bookRequestResults != nil && authorRequestResults != nil {
					ListItemView(boundBook: $bookRequestResults, boundAuthor: $authorRequestResults)
				}
			}
		}
		.onChange(of: bookRequestResults?.title!, {
			Task {
				do {
					// put the URL together for an author
					let newUrl = "https://openlibrary.org\(bookRequestResults!.authors!.first!.author!.key!).json"
					
					// Request a new Author
					try WebRequester().fetchAuthorData(extension: newUrl, completion: { author in
						authorRequestResults = author
					})
				}
			}
		})
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
	ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
