//
//  MostRecentView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct MostRecentView<TViewModel: RecentTabViewModelProtocol> : View {
    @ObservedObject var viewModel: TViewModel
    var body: some View {
        Button("Go to profile", action: {
            viewModel.showPersonalTab()
        })
            .tabItem {
                Image(systemName: "clock.arrow.circlepath")
                Text("Recent")
            }
            .tag(ExploreNavigationLink.recent)
    }
}

struct MostRecentView_Previews: PreviewProvider {
    static var previews: some View {
        MostRecentView(viewModel: RecentTabViewModel(exploreLink: .constant(.profile)))
    }
}
