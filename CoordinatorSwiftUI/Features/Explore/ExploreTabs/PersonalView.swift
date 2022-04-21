//
//  ForYouView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct PersonalView: View {
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.3)
            Text("Personal")
        }
        .tabItem {
            Image(systemName: "person")
            Text("Personal")
        }
        .tag(ExploreTabLink.profile)
    }
}

struct ForYouView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalView()
    }
}
