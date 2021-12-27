//
//  BrandGridView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false, content: {
			LazyHGrid(rows: gridLayout, spacing: colomnSpacing, content: {
				ForEach(brands){brand in
					BrandItemView(brand: brand)
				}
			}) // lazyh
				.frame(height: 200)
				.padding(15)
		}) // scrview
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
			.previewLayout(.sizeThatFits)
			.background(colorBackground)
    }
}
