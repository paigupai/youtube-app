//
//  Response.swift
//  youtube-app
//
//  Created by paigu on 2020/06/15.
//  Copyright © 2020 paigu. All rights reserved.
//

import Foundation
struct Response: Decodable {
    var items:[Video]?
    enum CodingKeys: String, CodingKey {
        case items
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Video].self, forKey: .items)
    }

}
