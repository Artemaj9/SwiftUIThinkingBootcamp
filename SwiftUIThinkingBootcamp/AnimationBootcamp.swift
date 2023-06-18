//
//  AnimationBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation.default.delay(2.0)) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 20)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width:   isAnimated ? 100: 300,
                    height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 60 : 0))
                .offset(x: isAnimated ? 50: -50, y: isAnimated ?  300: 0) //Translation
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
