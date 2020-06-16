//
//  ViewController.swift
//  youtube-app
//
//  Created by paigu on 2020/06/11.
//  Copyright © 2020 paigu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate{

    @IBOutlet var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
        model.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    // MARK: - ModelDelegate

    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        
        tableView.reloadData()
    }

    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath)
        
        cell.textLabel?.text = videos[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

