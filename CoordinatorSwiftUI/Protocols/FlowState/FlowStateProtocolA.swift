//
//  FlowStateProtocolA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation


protocol FlowStateProtocolA: FlowStateProtocol {
    var linkType: LinkTypeA? { get set }
}

enum LinkTypeA: Hashable {
    case screenB
    case screenC
}
