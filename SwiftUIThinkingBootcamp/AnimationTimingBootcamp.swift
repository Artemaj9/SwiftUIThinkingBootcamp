//
//  AniationTimingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct AniationTimingBootcamp: View {
    @State var isAnimating = false
    let timing: Double = 10.0
    var body: some View {
        VStack{
            Button("Button") {
                withAnimation(
                    Animation.spring(
                    response: 1.0,
                    dampingFraction: 0.9,
                    blendDuration: 10.0)) {
               
               isAnimating.toggle()
            }
                    }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350:50, height: 100)
          
              
//                .animation(Animation.linear(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350:50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AniationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AniationTimingBootcamp()
    }
}
