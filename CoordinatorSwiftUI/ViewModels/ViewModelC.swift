//
//  ViewModelC.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

class ViewModelC: ViewModelProtocolC, FlowStateProtocolC {
    @Published var linkType: LinkTypeC?
    var title = "Welcome to View C"
}
