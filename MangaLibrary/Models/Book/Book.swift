/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation

struct Book: Codable {
	let title: String?
	let key: String?
	let authors: [Book_Authors]?
	let type: Book_Type?
	let covers: [Int]?
	let subjects: [String]?
	let links: [Book_Links]?
	let description: String?
	let subject_places: [String]?
	let subject_people: [String]?
	let subject_times: [String]?
	let first_publish_date: String?
	let lc_classifications: [String]?
	let dewey_number: [String]?
	let latest_revision: Int?
	let revision: Int?
	let created: Book_Created?
	let last_modified: Book_Last_modified?

	enum CodingKeys: String, CodingKey {
		case title = "title"
		case key = "key"
		case authors = "authors"
		case type = "type"
		case covers = "covers"
		case subjects = "subjects"
		case links = "links"
		case description = "description"
		case subject_places = "subject_places"
		case subject_people = "subject_people"
		case subject_times = "subject_times"
		case first_publish_date = "first_publish_date"
		case lc_classifications = "lc_classifications"
		case dewey_number = "dewey_number"
		case latest_revision = "latest_revision"
		case revision = "revision"
		case created = "created"
		case last_modified = "last_modified"
	}

	init(from decoder: Decoder, isbn: String) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		key = try values.decodeIfPresent(String.self, forKey: .key)
		authors = try values.decodeIfPresent([Book_Authors].self, forKey: .authors)
		type = try values.decodeIfPresent(Book_Type.self, forKey: .type)
		covers = try values.decodeIfPresent([Int].self, forKey: .covers)
		subjects = try values.decodeIfPresent([String].self, forKey: .subjects)
		links = try values.decodeIfPresent([Book_Links].self, forKey: .links)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		subject_places = try values.decodeIfPresent([String].self, forKey: .subject_places)
		subject_people = try values.decodeIfPresent([String].self, forKey: .subject_people)
		subject_times = try values.decodeIfPresent([String].self, forKey: .subject_times)
		first_publish_date = try values.decodeIfPresent(String.self, forKey: .first_publish_date)
		lc_classifications = try values.decodeIfPresent([String].self, forKey: .lc_classifications)
		dewey_number = try values.decodeIfPresent([String].self, forKey: .dewey_number)
		latest_revision = try values.decodeIfPresent(Int.self, forKey: .latest_revision)
		revision = try values.decodeIfPresent(Int.self, forKey: .revision)
		created = try values.decodeIfPresent(Book_Created.self, forKey: .created)
		last_modified = try values.decodeIfPresent(Book_Last_modified.self, forKey: .last_modified)
	}
	
	init() {
		title = "Title"
		key = "Key"
		authors = [Book_Authors()]
		type = Book_Type()
		covers = [23521345]
		subjects = ["A person"]
		links = []
		description = ""
		subject_places = []
		subject_people = []
		subject_times = []
		first_publish_date = ""
		lc_classifications = []
		dewey_number = []
		latest_revision = 1
		revision = 1
		created = Book_Created()
		last_modified = Book_Last_modified()
	}

}
