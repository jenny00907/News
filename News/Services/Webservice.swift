//
//  Webservice.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/11.
//

import Foundation
import Combine


class Webservice {
    func getAllTopStories() -> AnyPublisher<[Int], Error> {
        guard let url =
                URL(string: "https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty") else { fatalError("Invalid URL for the HackerNews API") }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Int].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
