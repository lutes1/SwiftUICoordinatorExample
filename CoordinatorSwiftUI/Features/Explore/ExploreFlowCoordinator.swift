//
//  ExploreFlowCoordinator.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct ExploreFlowCoordinator<Content: View, TState: ExploreFlowStateProtocol> : CoordinatorProtocol, View {
    @ObservedObject var coordinatorState: TState
    @ViewBuilder var content: () -> Content
    var body: some View {
        content()
        
        TabView(selection: $coordinatorState.activeTab) {
            createMostRecentView()
            createMostLikedView()
            createPersonalView()
        }
        
        NavigationLink(
            tag: ExploreNavigationLink.settings,
            selection: $coordinatorState.linkType,
            destination: createSettingsView ) { EmptyView() }
    }
    
    func createMostRecentView() -> some View {
        MostRecentView(viewModel: RecentTabViewModel(exploreLink: $coordinatorState.activeTab))
    }
    
    func createMostLikedView() -> some View {
        MostLikedView()
    }
    
    func createPersonalView()  -> some View {
        PersonalView()
    }
    
    func createSettingsView() -> some View {
        let viewModel = SettingsViewModel()
        return SettingsView(viewModel: viewModel)
    }
}
