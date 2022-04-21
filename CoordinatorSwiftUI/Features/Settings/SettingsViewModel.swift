//
//  SettingsViewModel.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation
protocol SettingsViewModelProtocol: ViewModelProtocol {
    func openDetilsSheet()
}

class SettingsViewModel: SettingsViewModelProtocol, SettingsFlowStateProtocol {
    @Published var modalItem: SettingsModalItem?

    var title = "Welcome to settings screen"
    
    func openDetilsSheet() {
        modalItem = SettingsModalItem()
    }
}

