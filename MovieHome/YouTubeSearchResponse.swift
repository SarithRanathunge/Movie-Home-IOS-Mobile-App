//
//  YouTubeSearchResponse.swift
//  MovieHome
//
//  Created by Sarith Ranathunge on 2026-01-27.
//

import Foundation

struct YouTubeSearchResponse: Codable {
    let items: [ItemProperties]?
}

struct ItemProperties: Codable {
    let id: IdProperties?
}

struct IdProperties: Codable {
    let videoId: String?
    
}
