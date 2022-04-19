//
//  FlowCoordinatorA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct NavigationModel<Content: View>: Identifiable {
    let id = UUID()
    let linkType: LinkTypeA
    let binding: Binding<LinkTypeA?>
    let destinationFactory: (() -> Content)
}

struct FlowCoordinator<State: FlowProtocol, Content: View> : View {
    let model: State
    @ViewBuilder var content: Content
    
    var body: some View {
        NavigationView{
            ZStack {
                content
                ForEach(model.navigationItems) { navigationItem in
                    NavigationLink(tag: navigationItem.linkType, selection: navigationItem.binding, destination: navigationItem.destinationFactory) { EmptyView() }
                }
            }
        }
    }
}

protocol FlowProtocol {
    associatedtype Content: View
    var navigationItems: [NavigationModel<Content>] { get }
}

struct FlowCoordinatorA<Content: View> : FlowProtocol {
    var navigationItems: [NavigationModel<Content>]
    @ObservedObject var state: FlowStateProtocolA
    
    func initialize() {
        navigationItems = [
            NavigationModel(linkType: .screenB, binding: $state.linkType, destinationFactory: navigateToB)
        ]
    }
    
    func navigateToB () -> some View {
        let viewModel = ViewModelB()
        let view = ViewB(viewModel: viewModel)
        return view
    }
    
    func navigateToC() -> some View {
        let viewModel = ViewModelC()
        let view = ViewC(viewModel: viewModel)
        return view
    }
}
