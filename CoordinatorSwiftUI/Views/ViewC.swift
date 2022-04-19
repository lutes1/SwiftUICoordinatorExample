//
//  ViewC.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct ViewC<TViewModel: ViewModelProtocolC & FlowStateProtocolC>: View {
    @StateObject var viewModel: TViewModel
    var body: some View {
        Text(viewModel.title)
    }
}

struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC(viewModel: ViewModelC())
    }
}
