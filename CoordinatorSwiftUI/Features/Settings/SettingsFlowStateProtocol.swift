//
//  SettingsFlowLink.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation

protocol SettingsFlowStateProtocol: ModalFlowStateProtocol where TModalItem == SettingsModalItem {
}

struct SettingsModalItem: Identifiable {
    var id = UUID()
    var title = "Welcome to modal item"
}

