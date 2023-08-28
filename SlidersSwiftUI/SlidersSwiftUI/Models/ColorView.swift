//
//  ColorView.swift
//  SlidersSwiftUI
//
//  Created by Владислав on 15.10.22.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(
            red: red / 255,
            green: green / 255,
            blue: blue / 255
        )
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white, lineWidth: 4)
        )
            .frame(height: 130)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            ColorView(red: 150, green: 100, blue: 100)
        }
        
    }
}

