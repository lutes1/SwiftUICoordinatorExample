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
    func navigateToSettingsPage()
}

class ExploreViewModel: ExploreViewModelProtocol, ExploreFlowStateProtocol {

    @Published var activeTab: ExploreTabLink = .profile
    @Published var linkType: ExploreNavigationLink?
    
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
    
    func navigateToSettingsPage() {
        linkType = .settings
    }
}
