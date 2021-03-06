//
//  FlowStateProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation
import SwiftUI

protocol NavigationFlowStateProtocol : ObservableObject {
    associatedtype TNavLink where TNavLink: LinkProtocol
    var linkType: TNavLink? { get set }
}

protocol LinkProtocol: Hashable, Identifiable {
}
