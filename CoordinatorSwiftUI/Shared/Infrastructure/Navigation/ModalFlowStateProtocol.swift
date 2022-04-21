//
//  ModalFlowStateProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation

protocol ModalFlowStateProtocol : ObservableObject {
    associatedtype TModalItem
    var modalItem: TModalItem? { get set }
}
