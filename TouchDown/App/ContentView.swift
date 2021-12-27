//
//  ContentView.swift
//  TouchDown
//
//  Created by M H on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
	// MARK: props
	
	@EnvironmentObject var shop: Shop
	
	// MARK: body
    var body: some View {
		ZStack {
			if shop.showingProduct == false && shop.selectedProduct == nil {
				VStack(spacing: 0) {
					NavigationBarView()
						.padding(.horizontal, 15)
						.padding(.bottom)
						.padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
						.background(.white)
						.shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
					
			

					ScrollView(.vertical, showsIndicators: false){
						VStack(spacing: 0){
							FeaturedTabView()
								.padding(.vertical, 20)
								.frame(minWidth: UIScreen.main.bounds.width, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity)
							
							CategoryGridView()
							
							TitleView(title: "Helmet")
							
							LazyVGrid(columns: gridLayout,spacing: 15, content: {
								ForEach(products) {product in
									ProductItemView(product: product)
										.onTapGesture {
											withAnimation(.easeOut){
												shop.selectedProduct = product
												shop.showingProduct = true
											}
										}
								}
							}) // lazyv
								.padding(15)
							
							TitleView(title: "Brands")
							
							BrandGridView()
							
							FooterView()
								.padding(.horizontal)
						} // vstack
				} // scrview
				} // vsatck
				.background(colorBackground.ignoresSafeArea(.all, edges: .all))
			} else {
				ProductDetailView()
			}
		} // zstack
		.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(Shop())
    }
}
