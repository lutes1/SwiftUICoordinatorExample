//
//  ViewD.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct AccountView<TViewModel: AccountViewModelProtocol>: View {
    @ObservedObject var viewModel: TViewModel
    var body: some View {
        Text(viewModel.title)
    }
}

struct ViewD_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(viewModel: AccountViewModel())
    }
}
