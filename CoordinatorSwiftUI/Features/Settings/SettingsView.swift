//
//  SettingsView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct SettingsView<TViewModel: SettingsFlowStateProtocol & SettingsViewModelProtocol>: View {
    @ObservedObject var viewModel: TViewModel
    var body: some View {
        SettingsCoordinator(coordinatorState: viewModel) {
            Text("Welcome to settings view!")
            Button("Show details") {
                viewModel.openDetilsSheet()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewModel: SettingsViewModel())
    }
}
