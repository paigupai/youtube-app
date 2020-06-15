//
//  ViewController.swift
//  youtube-app
//
//  Created by paigu on 2020/06/11.
//  Copyright © 2020 paigu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        
    }


}

