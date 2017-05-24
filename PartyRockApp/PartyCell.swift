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
        // TODO: IMAGE FROM URL
    }
}
