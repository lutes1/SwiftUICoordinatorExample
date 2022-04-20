//
//  ExploreFlowStateProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import Foundation

protocol ExploreFlowStateProtocol: TabFlowStateProtocol where T == ExploreNavigationLink { }

enum ExploreNavigationLink: NavigationLinkProtocol {
    case recent
    case mostLiked
    case profile
    
    var id: String {
        switch self {
        case .recent:
            return "recent"
        case .mostLiked:
            return "liked"
        case .profile:
            return "profile"
        }
    }
}
