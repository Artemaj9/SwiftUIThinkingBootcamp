//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 19.06.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var myColor : Color = .green
    var body: some View {
        
        VStack {
            Text("Raiting")
            Text(
                String(format: "%.3f", sliderValue)
                
//                "\(Int(sliderValue))"
            )
            .foregroundColor(myColor)
          //  Slider(value: $sliderValue)
              //  .colorMultiply(.green)
            
           // Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
//                .padding()
            Slider( value: $sliderValue, in: 1...5, step: 1.0,
       onEditingChanged: {  _ in
                    myColor = .purple
                },
        minimumValueLabel: Text("1"),
        maximumValueLabel: Text("5"),
        label: {
            Text("Title")
        })
            .padding(30)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
