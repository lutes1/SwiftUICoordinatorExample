//
//  ViewModel.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 21.04.2022.
//

import Foundation

protocol DetailViewModelProtocol: ViewModelProtocol {
}

class DetailViewModel: DetailViewModelProtocol {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
