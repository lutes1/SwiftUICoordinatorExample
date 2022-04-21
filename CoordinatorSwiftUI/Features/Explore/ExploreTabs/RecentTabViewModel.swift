//
//  RecentTabViewModel.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

protocol RecentTabViewModelProtocol : ViewModelProtocol {
    func showPersonalTab()
    init(exploreLink: Binding<ExploreTabLink>)
}

class RecentTabViewModel : RecentTabViewModelProtocol {
    private var exploreLink: Binding<ExploreTabLink>
    
    required init(exploreLink: Binding<ExploreTabLink>) {
        self.exploreLink = exploreLink
    }
    
    var title = "Welcome to the recents view!"
    
    func showPersonalTab() {
        exploreLink.wrappedValue = .profile
    }
}
