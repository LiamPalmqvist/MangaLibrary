/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Remote_ids : Codable {
	let amazon : String?
	let viaf : String?
	let storygraph : String?
	let isni : String?
	let librivox : String?
	let project_gutenberg : String?
	let goodreads : String?
	let wikidata : String?
	let librarything : String?
	let bookbrainz : String?
	let musicbrainz : String?

	enum CodingKeys: String, CodingKey {

		case amazon = "amazon"
		case viaf = "viaf"
		case storygraph = "storygraph"
		case isni = "isni"
		case librivox = "librivox"
		case project_gutenberg = "project_gutenberg"
		case goodreads = "goodreads"
		case wikidata = "wikidata"
		case librarything = "librarything"
		case bookbrainz = "bookbrainz"
		case musicbrainz = "musicbrainz"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		amazon = try values.decodeIfPresent(String.self, forKey: .amazon)
		viaf = try values.decodeIfPresent(String.self, forKey: .viaf)
		storygraph = try values.decodeIfPresent(String.self, forKey: .storygraph)
		isni = try values.decodeIfPresent(String.self, forKey: .isni)
		librivox = try values.decodeIfPresent(String.self, forKey: .librivox)
		project_gutenberg = try values.decodeIfPresent(String.self, forKey: .project_gutenberg)
		goodreads = try values.decodeIfPresent(String.self, forKey: .goodreads)
		wikidata = try values.decodeIfPresent(String.self, forKey: .wikidata)
		librarything = try values.decodeIfPresent(String.self, forKey: .librarything)
		bookbrainz = try values.decodeIfPresent(String.self, forKey: .bookbrainz)
		musicbrainz = try values.decodeIfPresent(String.self, forKey: .musicbrainz)
	}

}