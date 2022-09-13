//
//  VideoModel.swift
//  Africa
//
//  Created by Oncu Can on 13.09.2022.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
            "video-\(id)"
    }
}
