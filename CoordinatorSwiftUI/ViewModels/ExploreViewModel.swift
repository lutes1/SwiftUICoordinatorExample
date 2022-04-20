//
//  ViewModelB.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol ExploreViewModelProtocol : ViewModelProtocol {
    func navigateToMostRecent()
    func navigateToMostLiked()
    func navigateToPersonal()
}

class ExploreViewModel: ExploreViewModelProtocol, ExploreFlowStateProtocol {
    @Published var activeTab: ExploreNavigationLink = .profile
    var title: String = "View explore view!"
    
    func navigateToMostRecent() {
        activeTab = .recent
    }
    
    func navigateToMostLiked() {
        activeTab = .mostLiked
    }
    
    func navigateToPersonal() {
        activeTab = .profile
    }
}
