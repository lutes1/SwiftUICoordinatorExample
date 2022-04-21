//
//  FlowStateProtocolA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol MainFlowStateProtocol: NavigationFlowStateProtocol where TNavLink == MainNavigationLink { }

enum MainNavigationLink: LinkProtocol {
    case explore
    case account
    
    var id: String {
        switch self {
        case .explore:
            return "explore"
        case .account:
            return "account"
        }
    }
}

