//
//  CacheManager.swift
//  youtube-app
//
//  Created by paigu on 2020/06/30.
//  Copyright © 2020 paigu. All rights reserved.
//

import Foundation

class CacheManager {

    static var cache = [String:Data]()

    static func setVideoCache(_ url:String, _ data:Data?) {
        cache[url] = data
    }

    static func getVideoCache(_ url:String) -> Data? {
        return cache[url]
    }
}
