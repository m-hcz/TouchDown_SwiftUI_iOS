//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct HeaderDetailView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		VStack(alignment: .leading, spacing: 6, content: {
			Text("Protective Gear")
			
			Text(shop.selectedProduct?.name ?? sampleProduct.name)
				.font(.largeTitle)
				.fontWeight(.black)
		}) // vstack
			.foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
    }
}
