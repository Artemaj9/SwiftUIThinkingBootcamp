//
//  ColorsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.purple
//                Color(UIColor.secondarySystemBackground)
                Color("MyAwesomeColor")
            )
            .frame(width: 300, height: 200, alignment: .center)
            .shadow(color: Color("MyAwesomeColor").opacity(0.8), radius: 20, x: -2, y: -20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            .preferredColorScheme(.light)
    }
}
