//
//  FlowCoordinatorA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct MainFlowCoordinator<Content: View, TState: MainFlowStateProtocol> : View
{
    @ObservedObject var model: TState
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        NavigationView {
            ZStack {
                content()
                NavigationLink(tag: .explore, selection: $model.linkType, destination: navigateToExplore) { EmptyView() }
                NavigationLink(tag: .account, selection: $model.linkType, destination: navigateToAccount) { EmptyView() }
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
