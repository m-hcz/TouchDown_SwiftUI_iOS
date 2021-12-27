//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false, content: {
			LazyHGrid(rows: gridLayout, alignment: .center, spacing: colomnSpacing, pinnedViews: [], content: {
				Section(header: SectionView(rotateClockwise: false) , footer: SectionView(rotateClockwise: true)) {
					ForEach(categories){ category in
						CategoryItemView(category: category)
					}
				}
			}) // lazyh
				.frame(height: 140)
				.padding(.horizontal, 15)
				.padding(.vertical, 10)
		}) // srcview
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
			.previewLayout(.sizeThatFits)
			.padding()
			.background(colorBackground)
    }
}
