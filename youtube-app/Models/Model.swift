//
//  Model.swift
//  youtube-app
//
//  Created by paigu on 2020/06/15.
//  Copyright © 2020 paigu. All rights reserved.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos:[Video])
}

class Model {
    
    var delegate:ModelDelegate?
    
    
    func getVideos() {
        //creat a url object
        let url = URL(string: Constants.API_URL)
        guard url != nil else {
            return
        }
        //get urlsession object
        let session = URLSession.shared
        
        //get data
        let dataTask = session.dataTask(with: url!) {
            (data, response, error) in
            
            //check
            if error != nil || data == nil {
                return
            }
            
            do{
                //parsing data
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                dump(response)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                                            
                        self.delegate?.videosFetched(response.items!)
                    }

                }
                

                
            }catch{
                print("decode failed")
            }
            
            
            
        }
        
        dataTask.resume()
    }
}
