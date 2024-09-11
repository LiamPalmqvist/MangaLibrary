/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Author : Codable {
	let photos : [Int]?
	let source_records : [String]?
	let links : [Links]?
	let remote_ids : Remote_ids?
	let alternate_names : [String]?
	let name : String?
	let death_date : String?
	let type : Type?
	let key : String?
	let personal_name : String?
	let birth_date : String?
	let bio : String?
	let latest_revision : Int?
	let revision : Int?
	let created : Created?
	let last_modified : Last_modified?

	enum CodingKeys: String, CodingKey {

		case photos = "photos"
		case source_records = "source_records"
		case links = "links"
		case remote_ids = "remote_ids"
		case alternate_names = "alternate_names"
		case name = "name"
		case death_date = "death_date"
		case type = "type"
		case key = "key"
		case personal_name = "personal_name"
		case birth_date = "birth_date"
		case bio = "bio"
		case latest_revision = "latest_revision"
		case revision = "revision"
		case created = "created"
		case last_modified = "last_modified"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		photos = try values.decodeIfPresent([Int].self, forKey: .photos)
		source_records = try values.decodeIfPresent([String].self, forKey: .source_records)
		links = try values.decodeIfPresent([Links].self, forKey: .links)
		remote_ids = try values.decodeIfPresent(Remote_ids.self, forKey: .remote_ids)
		alternate_names = try values.decodeIfPresent([String].self, forKey: .alternate_names)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		death_date = try values.decodeIfPresent(String.self, forKey: .death_date)
		type = try values.decodeIfPresent(Type.self, forKey: .type)
		key = try values.decodeIfPresent(String.self, forKey: .key)
		personal_name = try values.decodeIfPresent(String.self, forKey: .personal_name)
		birth_date = try values.decodeIfPresent(String.self, forKey: .birth_date)
		bio = try values.decodeIfPresent(String.self, forKey: .bio)
		latest_revision = try values.decodeIfPresent(Int.self, forKey: .latest_revision)
		revision = try values.decodeIfPresent(Int.self, forKey: .revision)
		created = try values.decodeIfPresent(Created.self, forKey: .created)
		last_modified = try values.decodeIfPresent(Last_modified.self, forKey: .last_modified)
	}

}
