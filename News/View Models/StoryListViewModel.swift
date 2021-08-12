//
//  StoryListViewModel.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/11.
//

import Foundation
import Combine

class StoryListViewModel: ObservableObject {
    @Published var stories = [StoryViewModel]()
    private var cancellable: AnyCancellable?
    
    init() {
        fetchTopStories()
    }
    
    private func fetchTopStories() {
        self.cancellable = Webservice().getAllTopStories().map { storyIds in
            storyIds.map { StoryViewModel(id: $0) }
        }.sink(receiveCompletion: { _ in }, receiveValue: { storyViewModels in
            self.stories = storyViewModels
        })
    }
}

struct StoryViewModel {
    let id: Int
}
