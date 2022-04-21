//
//  TabFlowStateProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation

protocol TabFlowStateProtocol : ObservableObject {
    associatedtype TTabLink where TTabLink: LinkProtocol
    var activeTab: TTabLink { get set }
}
