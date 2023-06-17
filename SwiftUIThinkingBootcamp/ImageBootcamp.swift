//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("Zvezdopad")
        //in right tab you can use render as template!
            //.renderingMode(.template)
            .resizable()
            .frame(width: 300, height: 300)
           // .aspectRatio(contentMode: .fit)
           // .clipped()
            //.ignoresSafeArea()
            .scaledToFill()
            
          //  .cornerRadius(150) //half of size
            .clipShape(
                Circle()
              // RoundedRectangle(cornerRadius: 20)
              // Ellipse()
            
            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
