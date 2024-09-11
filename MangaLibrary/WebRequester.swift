//
//  WebRequester.swift
//  MangaLibrary
//
//  Created by Liam Palmqvist on 10/09/2024.
//

import UIKit

// UIKit is imported here becuase it contains Foundation as well as all other neccessary components to make requests

class WebRequester {
	
	func fetchBookData(from url: String?, completion: @escaping (Book?) -> Void) throws {
		if url == nil {
			completion(nil)
		}
		guard let newURL: URL = URL(string: url!) else {
			throw RequestErrors.notValidURL
		}
		// let _ = print("\(newURL)")
		let task = URLSession.shared.dataTask(with: newURL) { data, response, error in
			guard let data = data, error == nil else {
				let _ = print("Error fetching data: \(error?.localizedDescription ?? "Unknown error")")
				completion(nil)
				return
			}
			
			let decoder = JSONDecoder()
			do {
				let bookResponse = try decoder.decode(Book.self, from: data)
				completion(bookResponse)
			} catch {
				let _ = print("Error decoding JSON: \(error.localizedDescription)")
				completion(nil)
			}
		}
		task.resume()
	}
	
	func fetchAuthorData(extension urlExtension: String?, completion: @escaping (Author?) -> Void) throws {
		if urlExtension == nil {
			completion(nil)
		}
		guard let newURL: URL = URL(string: urlExtension!) else {
			throw RequestErrors.notValidURL
		}
		// let _ = print("\(newURL)")
		let task = URLSession.shared.dataTask(with: newURL) { data, response, error in
			guard let data = data, error == nil else {
				let _ = print("Error fetching data: \(error?.localizedDescription ?? "Unknown error")")
				completion(nil)
				return
			}
			
			let decoder = JSONDecoder()
			do {
				let bookResponse = try decoder.decode(Author.self, from: data)
				completion(bookResponse)
			} catch {
				let _ = print("Error decoding JSON: \(error.localizedDescription)")
				completion(nil)
			}
		}
		task.resume()
	}
}

enum RequestErrors: Error {
	case badRequest
	case urlDoesNotExist
	case notValidURL
}
extension RequestErrors: LocalizedError {
	public var localisedDescription: String? {
		switch self {
		case .badRequest:
			return NSLocalizedString("User made a bad request", comment: "")
		case .notValidURL:
			return NSLocalizedString("User submitted an invalid URL", comment: "")
		case .urlDoesNotExist:
			return NSLocalizedString("User submitted a URL which does not exist", comment: "")
		}
	}
}
