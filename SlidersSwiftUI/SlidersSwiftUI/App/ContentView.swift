//
//  ContentView.swift
//  SlidersSwiftUI
//
//  Created by Владислав on 6.10.22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Private

    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    @State private var savedRed = Double.random(in: 0...255)
    @State private var savedGreen = Double.random(in: 0...255)
    @State private var savedBlue = Double.random(in: 0...255)
    
    // MARK: Internal

    var body: some View {
        ZStack {
            Color(.lightGray).ignoresSafeArea()

            VStack(spacing: 40) {
                ColorView(red: red, green: green, blue: blue)
                ColorView(red: savedRed, green: savedGreen, blue: savedBlue)

                VStack {
                    SliderView(sliderValue: $red, color: .red)
                    SliderView(sliderValue: $green, color: .green)
                    SliderView(sliderValue: $blue, color: .blue)
                }
                .frame(height: 150)

                Button("Save", action: {
                    (savedRed, savedGreen, savedBlue) = (red, green, blue)
                }).buttonStyle(.borderedProminent)

                Spacer()
            }.padding()
        }
        .onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
