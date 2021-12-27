//
//  Shop.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import Foundation

class Shop:ObservableObject {
	@Published var showingProduct: Bool = false
	@Published var selectedProduct: Product? = nil
}
