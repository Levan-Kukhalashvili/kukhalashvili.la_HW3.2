//
//  SliderView.swift
//  kukhalashvili.la_HW3.2
//
//  Created by Admin on 15.12.2020.
//

import SwiftUI

struct SliderView: View {
    
    @State private var showAlert = false
    @Binding var value: Double
    
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(textColor)
                .frame(width: 32, height: 32)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(textColor)
            
            TextField("\(lround(value))",
                      value: $value,
                      formatter: NumberFormatter.numbers,
                      onCommit: {
                        checkValue()
                      })
                .frame(width: 50, height: 32)
                .foregroundColor(textColor)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Wrong Format!"), message: Text("Enter values from 0 to 255"))
        }
    }
    
    private func checkValue() {
        if value < 0 || value > 255  {
            showAlert = true
            value = 127
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(127), textColor: .red)
    }
}

extension NumberFormatter {
    static var numbers: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumIntegerDigits = 1
        formatter.maximumIntegerDigits = 3
        return formatter
    }
}
