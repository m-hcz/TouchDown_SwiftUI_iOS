//
//  ProductItemView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct ProductItemView: View {
	
	let product: Product
	
	var body: some View {
		VStack(alignment: .leading, spacing: 6, content: {
			ZStack{
				Image(product.image)
					.resizable()
					.scaledToFit()
					.padding(10)
				
			} // zstack
			.background(product.backgroundColor)
			.cornerRadius(12)
			
			Text(product.name)
				.font(.title3)
				.fontWeight(.black)
			
			Text(product.formatedPrice)
				.fontWeight(.semibold)
				.foregroundColor(.gray)
		}) // vstack
	}
}

struct ProductItemView_Previews: PreviewProvider {
	static var previews: some View {
		ProductItemView(product: products[0])
			.previewLayout(.fixed(width: 200, height: 300))
			.padding()
			.background(colorBackground)
	}
}
