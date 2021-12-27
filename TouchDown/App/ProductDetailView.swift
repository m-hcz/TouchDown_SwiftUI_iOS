//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct ProductDetailView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		VStack(alignment: .leading, spacing: 5, content: {
			// navbar
			NavigationBarDetailView()
				.padding(.horizontal)
				.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
			
			// header
			HeaderDetailView()
				.padding(.horizontal)
			// detail top part
			TopPartDetailView()
				.padding(.horizontal)
				.zIndex(1)
			// detail bottom part
			VStack(alignment: .center, spacing: 0, content: {
				// rating
				RatingsSizesDetailView()
					.padding(.top, -20)
					.padding(.bottom, 10)
				// description
				ScrollView(.vertical, showsIndicators: false, content: {
					Text(shop.selectedProduct?.description ?? sampleProduct.description)
						.font(.system(.body, design: . rounded))
						.foregroundColor(.gray)
						.multilineTextAlignment(.leading)
					
				}) // scrview
				// quantity
				QuantityFavouriteDetailView()
					.padding(.vertical, 10)
				// add to cart
				AddToCartDetailView()
					.padding(.bottom, 20)
				
				
			}) // vstack
				.padding(.horizontal)
				.background(Color.white
								.clipShape(CustomShape())
								.padding(.top, -105)
				)
			
		
		}) // vstack
			.zIndex(0)
			.ignoresSafeArea(.all, edges: .all)
			.background((shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor)
							.ignoresSafeArea(.all, edges: .all))
			
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
			.environmentObject(Shop())
			.previewLayout(.fixed(width: 375, height: 812))
    }
}
