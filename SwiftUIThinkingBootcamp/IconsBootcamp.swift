//
//  IconsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
           // .aspectRatio(contentMode: .fill)
            //.scaledToFit()
            .scaledToFit()
           // .foregroundColor(Color.orange)
        //.font(.system(size: 200))
        //.foregroundColor(.red)
            .frame(width: 300, height: 300)
           // .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
