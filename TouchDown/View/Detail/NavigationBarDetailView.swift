//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
	
	@EnvironmentObject var shop: Shop
	
    var body: some View {
		HStack{
			Button(action: {
				withAnimation(.easeIn){
					shop.selectedProduct = nil
					shop.showingProduct = false
				}
			}, label: {
				Image(systemName: "chevron.left")
					.font(.title)
					.foregroundColor(.white)
			}) // button
			
			Spacer()
			
			Button(action: {}, label: {
				Image(systemName: "cart")
					.font(.title)
					.foregroundColor(.white)
			}) // button
		} // hstack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
			.environmentObject(Shop())
			.previewLayout(.sizeThatFits)
			.padding()
			.background(.gray)
    }
}
