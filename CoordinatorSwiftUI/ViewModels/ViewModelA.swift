//
//  ViewModelA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol ViewModelCombinedProtocol: FlowStateProtocolA, ViewModelProtocolA { }

class ViewModelA: ViewModelCombinedProtocol {
    @Published var linkType: LinkTypeA?
    @Published var title = "View A!"
    
    func navigateToViewB() {
        linkType = .screenB
    }
    
    func navigateToViewC() {
        linkType = .screenC
    }
}
