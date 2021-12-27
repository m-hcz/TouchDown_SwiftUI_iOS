//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
		TabView{
			ForEach(players) { player in
				FeaturedItemView(player: player)
					.padding(.top, 10)
					.padding(.horizontal, 15)
			} // loop
		} // tabview
		.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
			.background(.gray)
			
    }
}
