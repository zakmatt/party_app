//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Admin on 02/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var songs = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageUrl: "https://i.ytimg.com/vi/ZK7Ojytg04Q/maxresdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZK7Ojytg04Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "How did I get here")
        
        let p2 = PartyRock(imageUrl: "https://images.8tracks.com/cover/i/000/364/734/summer_chill-7688.jpg?rect=58,0,844,844&q=98&fm=jpg&fit=max", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Z7E_PdpMMwI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Summer Chill")
        
        let p3 = PartyRock(imageUrl: "http://eleconomista.com.mx/files/imagecache/eco2014_650x433/files/ny-subastas_webf.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/b68MmRNjTGM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Gymnopedie")
        
        let p4 = PartyRock(imageUrl: "https://i1.sndcdn.com/artworks-000171463669-f24evk-t500x500.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-kBhum7f4rI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "General Chill")
        
        songs.append(p1)
        songs.append(p2)
        songs.append(p3)
        songs.append(p4)
        songs.append(p4)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = songs[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        } else {
            return  UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
}

