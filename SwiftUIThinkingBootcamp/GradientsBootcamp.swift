//
//  GradientsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.green
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(red: 133, green: 163, blue: 137), Color.purple]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//            )
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.cyan,Color.blue]),
//                    center: .topLeading,
//                    startRadius: 10,
//                    endRadius: 300)
//                )
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topTrailing,
                    angle: .degrees(20))
        
           
                )
            .ignoresSafeArea()
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
