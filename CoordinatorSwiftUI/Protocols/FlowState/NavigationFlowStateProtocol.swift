//
//  FlowStateProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation
protocol NavigationFlowStateProtocol : ObservableObject {
    associatedtype T where T: NavigationLinkProtocol
    var linkType: T? { get set }
}

protocol NavigationLinkProtocol: Hashable, Identifiable {
}

protocol TabFlowStateProtocol : ObservableObject {
    associatedtype T where T: NavigationLinkProtocol
    var activeTab: T { get set }
}

protocol SheetFlowStateProtocol : ObservableObject {
    var sheetModel: Any? { get set }
}
