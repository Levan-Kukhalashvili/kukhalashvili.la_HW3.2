//
//  ContentView.swift
//  kukhalashvili.la_HW3.2
//
//  Created by Admin on 14.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 127
    @State private var greenValue: Double = 128
    @State private var blueValue: Double = 127
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea(.all)
            VStack {
                Text("Colorized")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                ColorView(redValue: $redValue,
                          greenValue: $greenValue,
                          blueValue: $blueValue)
                    .padding(.bottom, 30)
                SliderView(value: $redValue,

                           textColor: .red)
                SliderView(value: $greenValue,

                           textColor: .green)
                    .padding(.vertical)
                SliderView(value: $blueValue,

                           textColor: .blue)
                Spacer()
            } .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
