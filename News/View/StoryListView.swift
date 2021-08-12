//
//  StoryListView.swift
//  News
//
//  Created by Jenny Woorim Lee on 2021/08/11.
//

import SwiftUI

struct StoryListView: View {
    @ObservedObject private var storyListVM = StoryListViewModel()
    var body: some View {
        NavigationView {
            List(self.storyListVM.stories, id: \.id) { storyVM in
                NavigationLink(
                    destination: StoryDetailView(storyId: storyVM.id)) {
                    Text("\(storyVM.title)")
                }
            }
            .navigationBarTitle("News")
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}
