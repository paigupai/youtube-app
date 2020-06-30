//
//  Constants.swift
//  youtube-app
//
//  Created by paigu on 2020/06/15.
//  Copyright © 2020 paigu. All rights reserved.
//

import Foundation

struct Constants {
    //API_KEY 
    static var API_KEY = ""
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
    
    static var CELL_LABEL_DATE_FORMATTER = "EEEE, MMM d, yyyy"
}
