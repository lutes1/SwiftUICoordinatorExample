//
//  SettingsCoordinator.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation
import SwiftUI

struct SettingsCoordinator<Content: View, TState: SettingsFlowStateProtocol>: View, CoordinatorProtocol {
    @ObservedObject var coordinatorState: TState
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        content()
            .sheet(item: $coordinatorState.modalItem) { item in
                openAndConfigureModal(item)
            }
    }
    
    func openAndConfigureModal(_ item: SettingsModalItem) -> some View {
        let viewModel = DetailViewModel(title: item.title)
        return DetailPageView(viewModel: viewModel)
    }
}
