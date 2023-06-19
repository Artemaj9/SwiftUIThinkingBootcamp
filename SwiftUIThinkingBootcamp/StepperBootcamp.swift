//
//  StepperBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 19.06.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    @State var sepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper \(sepperValue)", value: $sepperValue)
                .padding(50)
            
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            Stepper("Stepper 2") {
                //increment
               incrementWidth(amount: 10)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -10)
            }
            .padding(50)

        }
    }
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut(duration: 1)) {
            widthIncrement += amount
        }
    }
}


struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
