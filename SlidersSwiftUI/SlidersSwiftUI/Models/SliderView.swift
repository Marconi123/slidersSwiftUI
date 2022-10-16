//
//  SliderView.swift
//  SlidersSwiftUI
//
//  Created by Владислав on 9.10.22.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            
            Text("\(lround(sliderValue))")
                .frame(width: 35, alignment: .leading)
                .foregroundColor(.white)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(color)
            
            SliderTF(value: $sliderValue)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.gray)
            SliderView(sliderValue: .constant(100), color: .red)
        }
    }
}
