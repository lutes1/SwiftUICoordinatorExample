//
//  ViewA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct MainView<TViewModel: MainViewModelProtocol & MainFlowStateProtocol>: View {
    @StateObject var viewModel: TViewModel
    
    var body: some View {
        MainFlowCoordinator(model: viewModel) {
            VStack {
                Button("Account view") {
                    viewModel.navigateToAccount()
                }
                
                Spacer()
                    .frame(height: 20)
                
                Button("Explore view") {
                    viewModel.navigateToExplore()
                }
            }
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: MainViewModel())
    }
}

