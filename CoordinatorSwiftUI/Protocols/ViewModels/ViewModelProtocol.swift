//
//  ViewModelProtocol.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import Foundation

protocol ViewModelProtocol: ObservableObject {
    var title: String { get set }
}
