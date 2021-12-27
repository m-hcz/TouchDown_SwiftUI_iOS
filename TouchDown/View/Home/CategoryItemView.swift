//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct CategoryItemView: View {
	// MARK: props
	let category: Category
	
	// MARK: body
    var body: some View {
		Button(action: {}, label: {
			HStack(alignment: .center, spacing: 6){
				Spacer()
				Image(category.image)
					.renderingMode(.template)
					.resizable()
					.scaledToFit()
					.frame(width: 30, height: 30, alignment: .center)
					.foregroundColor(.gray)
				
				Text(category.name.uppercased())
					.fontWeight(.light)
					.foregroundColor(.gray)
				
				Spacer()
			} // hsatck
			.padding()
			.background(Color.white.cornerRadius(12))
			.background(RoundedRectangle(cornerRadius: 12)
							.stroke(Color.gray, lineWidth: 1))
		}) // button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
    }
}
