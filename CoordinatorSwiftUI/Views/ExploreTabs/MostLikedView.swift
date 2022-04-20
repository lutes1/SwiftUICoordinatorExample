//
//  MostLikedView.swift
//  CoordinatorSwiftUI
//
//  Created by Petru Lutenco on 20.04.2022.
//

import SwiftUI

struct MostLikedView: View {
    var body: some View {
        Text("Most liked")
            .tabItem {
                Image(systemName: "hand.thumbsup")
                Text("Liked")
            }
            .tag(ExploreNavigationLink.mostLiked)
        
    }
}

struct MostLikedView_Previews: PreviewProvider {
    static var previews: some View {
        MostLikedView()
    }
}
