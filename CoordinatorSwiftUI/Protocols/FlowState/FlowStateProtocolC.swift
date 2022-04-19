//
//  FlowStateProtocolC.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol FlowStateProtocolC: FlowStateProtocol {
    var linkType: LinkTypeC? { get set }
}

enum LinkTypeC: Hashable {
    case screenD
}
