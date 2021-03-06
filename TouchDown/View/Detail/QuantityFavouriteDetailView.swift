//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
	
	@State private var counter: Int = 0
	
	
    var body: some View {
		HStack(alignment: .center, spacing: 6, content: {
			Button(action: {
				if counter > 0 {
					counter -= 1
				}
			}, label: {
				Image(systemName: "minus.circle")
			}) // button
			
			Text("\(counter)")
				.fontWeight(.semibold)
				.frame(minWidth: 36)
			
			Button(action: {
				if counter < 100 {
					counter += 1
				}
			}, label: {
				Image(systemName: "plus.circle")
			}) // button
			
			Spacer()
			
			Button(action: {}, label: {
				Image(systemName: "heart.circle")
					.foregroundColor(.pink)
			}) // button
		}) // hstack
			.font(.system(.title,design: .rounded))
			.foregroundColor(.black)
			.imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
