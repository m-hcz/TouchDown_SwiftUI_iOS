//
//  CodableBundleExtention.swift
//  TouchDown
//
//  Created by M H on 14/12/2021.
//

import Foundation

extension Bundle{
	func decode <T: Codable>(_ file: String) -> T{
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Faild to locate \(file) in bundle")
		}
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Faild to load \(file) in bundle")
		}
		guard let decodeData = try? JSONDecoder().decode(T.self , from: data) else {
			fatalError("Faild to decode \(file) in bundle")
		}
		return decodeData
	}
}
