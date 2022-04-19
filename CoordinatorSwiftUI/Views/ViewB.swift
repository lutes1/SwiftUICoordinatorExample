//
//  ViewB.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 18.04.2022.
//

import SwiftUI

struct ViewB<TViewModel: ViewModelProtocolB>: View {
    @StateObject var viewModel: TViewModel
    
    var body: some View {
        Text(viewModel.title)
    }
}

struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB(viewModel: ViewModelB())
    }
}
