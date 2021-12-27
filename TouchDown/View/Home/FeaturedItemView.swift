//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct FeaturedItemView: View {
	// MARK: props
	let player: Player
	
	// MARK: body
    var body: some View {
		Image(player.image)
			.resizable()
			.scaledToFit()
			.cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
    }
}
