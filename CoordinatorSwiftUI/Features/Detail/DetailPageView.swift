//
//  DetailPageView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct DetailPageView<TViewModel: ViewModelProtocol>: View {
    var viewModel: TViewModel
    var body: some View {
        Text(viewModel.title)
    }
}

struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView(viewModel: DetailViewModel(title : " "))
    }
}
