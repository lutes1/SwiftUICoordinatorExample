//
//  ExploreFlowCoordinator.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct ExploreFlowCoordinator<Content: View, TState: ExploreFlowStateProtocol> : View
{
    @ObservedObject var model: TState
    @ViewBuilder var content: () -> Content
    var body: some View {
        return Group {
            content()
            TabView(selection: $model.activeTab) {
                createMostRecentView()
                createMostLikedView()
                createPersonalView()
            }
        }
    }
    
    func createMostRecentView() -> some View {
        MostRecentView(viewModel: RecentTabViewModel(exploreLink: $model.activeTab))
    }
    
    func createMostLikedView() -> some View {
        MostLikedView()
    }
    
    func createPersonalView()  -> some View {
        PersonalView()
    }
}
