//
//  ViewB.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct ExploreView<TViewModel: ExploreViewModelProtocol & ExploreFlowStateProtocol>: View {
    @StateObject var viewModel: TViewModel
    
    var body: some View {
        ExploreFlowCoordinator(model: viewModel) { EmptyView() }
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(viewModel: ExploreViewModel())
    }
}
