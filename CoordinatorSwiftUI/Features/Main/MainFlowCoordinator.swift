//
//  FlowCoordinatorA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

protocol CoordinatorProtocol {
    associatedtype Content: View
    associatedtype TState
    var content: () -> Content { get }
    var coordinatorState: TState { get }
}

struct MainFlowCoordinator<Content: View, TState: MainFlowStateProtocol> : CoordinatorProtocol, View {
    @ObservedObject var coordinatorState: TState
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        NavigationView {
            ZStack {
                content()
                NavigationLink(tag: .explore, selection: $coordinatorState.linkType, destination: navigateToExplore) { EmptyView() }
                NavigationLink(tag: .account, selection: $coordinatorState.linkType, destination: navigateToAccount) { EmptyView() }
            }
        }
    }
    
    func navigateToExplore () -> some View {
        let viewModel = ExploreViewModel()
        let view = ExploreView(viewModel: viewModel)
        return view
    }
    
    func navigateToAccount() -> some View {
        let viewModel = AccountViewModel()
        let view = AccountView(viewModel: viewModel)
        return view
    }
}
