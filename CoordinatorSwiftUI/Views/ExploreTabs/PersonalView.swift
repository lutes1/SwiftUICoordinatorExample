//
//  ForYouView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct PersonalView: View {
    var body: some View {
        Text("Personal")
            .tabItem {
                Image(systemName: "person")
                Text("Personal")
            }
            .tag(ExploreNavigationLink.profile)
    }
}

struct ForYouView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalView()
    }
}
