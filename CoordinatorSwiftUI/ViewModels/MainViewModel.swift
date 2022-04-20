//
//  ViewModelA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol MainViewModelProtocol: ViewModelProtocol {
    func navigateToAccount()
    func navigateToExplore()
}

class MainViewModel: MainFlowStateProtocol, MainViewModelProtocol {
    @Published var linkType: MainNavigationLink?
    @Published var title = "Welcome to the main view!"
    
    func navigateToAccount() {
        linkType = .account
    }
    
    func navigateToExplore() {
        linkType = .explore
    }
}
