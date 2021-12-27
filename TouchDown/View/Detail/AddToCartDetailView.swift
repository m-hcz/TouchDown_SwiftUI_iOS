//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct AddToCartDetailView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		Button(action: {}, label: {
			Spacer()
			
			Text("Add to cart".uppercased())
				.font(.system(.title2, design: .rounded))
				.fontWeight(.bold)
				.foregroundColor(.white)
			
			Spacer()
		}) // button
			.padding(15)
			.background(shop.selectedProduct?.backgroundColor ?? sampleProduct.backgroundColor)
			.clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
