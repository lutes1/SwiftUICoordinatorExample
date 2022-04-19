//
//  ViewA.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct ViewA<TViewModel: ViewModelCombinedProtocol>: View {
    @StateObject var viewModel: TViewModel
    var body: some View {
        FlowCoordinatorA(state: viewModel) {
            VStack {
                Button("Go to view B") {
                    viewModel.navigateToViewB()
                }
                
                Spacer()
                    .frame(height: 20)
                
                Button("Go to view C") {
                    viewModel.navigateToViewC()
                }
            }
        }
    }
}

struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA(viewModel: ViewModelA())
    }
}

