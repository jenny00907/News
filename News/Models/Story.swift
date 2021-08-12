//
//  Story.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/12.
//

import Foundation


struct Story: Codable {
    let id: Int
    let title: String
    let url: String
    
    static func placeholder() -> Story {
        return Story(id: 0, title: "No Titles", url: "")
    }
}


