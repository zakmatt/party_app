//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Admin on 03/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageURL)! // Unwrap!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                // First get the data in the asynchronous stream
                // in order not to slow or pause our app
                // then once we have our data, update te image 
                // IN THE GLOBAL STREAM!!
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                // handle the error
            }
        }
    }
}
