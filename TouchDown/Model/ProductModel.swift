//
//  ProductModel.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import Foundation
import SwiftUI

struct Product:Codable,Identifiable{
	let id: Int
	let name: String
	let image: String
	let price: Int
	let description: String
	let color: [Double]
	
	var backgroundColor: Color { return Color(red: self.color[0], green: self.color[1], blue: self.color[2]) }
	var formatedPrice: String { return "$\(price)" }
}
