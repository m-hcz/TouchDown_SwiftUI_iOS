//
//  LogoView.swift
//  TouchDown
//
//  Created by M H on 12/12/2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
		HStack(spacing: 4){
			Text("TOUCH".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
			
			Image("logo-dark")
				.resizable()
				.scaledToFit()
				.frame(width: 30, height: 30, alignment: .center)
			
			Text("DOWN".uppercased())
				.font(.title3)
				.fontWeight(.black)
				.foregroundColor(.black)
		} // hstack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
 
