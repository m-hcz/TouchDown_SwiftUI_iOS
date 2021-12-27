//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by M H on 12/12/2021.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(Shop())
        }
    }
}
