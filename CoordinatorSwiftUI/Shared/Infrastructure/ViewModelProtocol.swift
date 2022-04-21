//
//  ViewModelProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation

protocol ViewModelProtocol: ObservableObject {
    var title: String { get }
}
