//
//  CoordinatorSwiftUIApp.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

@main
struct CoordinatorSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: MainViewModel())
        }
    }
}
