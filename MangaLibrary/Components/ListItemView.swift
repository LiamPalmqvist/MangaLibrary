//
//  ListItemView.swift
//  MangaLibrary
//
//  Created by Liam Palmqvist on 11/09/2024.
//

import SwiftUI

struct ListItemView: View {
	
	@Binding var boundBook: Book?
	@Binding var boundAuthor: Author?
	@State var authorURL: String?
	
    var body: some View {
		VStack {
			if boundBook != nil {
				
				Text("\(boundBook!.title!)")
			}
			
			if boundAuthor != nil {
				Text(boundAuthor!.name!)
			}
		}
    }
}


/*
#Preview {
	ListItemView(boundBook: .constant(Book.init()))
}
*/

