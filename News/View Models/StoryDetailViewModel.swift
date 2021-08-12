//
//  StoryDetailViewModel.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/12.
//

import Foundation
import Combine


class StoryDetailViewModel: ObservableObject {
    var title: String {
        return self.story.title
    }
    var url: String {
        return self.story.url
    }
    
    private var cancellable: AnyCancellable?
    
    @Published private var story = Story.placeholder()

    func fetchStoryDetails(storyId: Int) {
        self.cancellable = Webservice().getStoryById(storyId: storyId)
            .catch { _ in Just(Story.placeholder()) }
            .sink(receiveCompletion: { _ in }, receiveValue: { story in
                self.story = story
            })
    }
}

