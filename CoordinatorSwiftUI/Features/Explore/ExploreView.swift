//
//  ViewB.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

typealias T = ExploreViewModelProtocol & ExploreFlowStateProtocol

struct ExploreView<TViewModel: T>: View {
    @ObservedObject var viewModel: TViewModel
    var body: some View {
        ExploreFlowCoordinator(coordinatorState: viewModel) {
            Button("Go to settings view!") {
                viewModel.navigateToSettingsPage()
            }
        }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(viewModel: ExploreViewModel())
    }
}
