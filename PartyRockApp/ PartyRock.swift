//
//   PartyRock.swift
//  PartyRockApp
//
//  Created by Admin on 04/05/2017.
//  Copyright © 2017 Mattowy. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageUrl
    }
    var videoURL: String {
        return _videoUrl
    }
    var videoTitle: String  {
        return _videoTitle
    }
    
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
