//
//  ColorView.swift
//  kukhalashvili.la_HW3.2
//
//  Created by Admin on 14.12.2020.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 150)
            .foregroundColor(Color(red: redValue / 255,
                                   green: greenValue / 255,
                                   blue: blueValue / 255))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redValue: .constant(10.0), greenValue: .constant(10.0), blueValue: .constant(10.0))
    }
}
