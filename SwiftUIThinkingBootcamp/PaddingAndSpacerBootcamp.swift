//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text("Hello, World!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            Text("This is the decscription of what we will do on this screen It is multiline lines and we will align the text to the leading edge.")
                .font(.body)
            .fontWeight(.thin)
        }
    
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal,10)
       
        /*    .frame(maxWidth: .infinity, alignment: .leading)
            //.background(Color.red)
            .padding(.leading, 20) */
        
          /*  .background(Color.yellow)
            .foregroundColor(Color.black)
            .fontWeight(.black)
          //  .padding()
            .padding(.all, 10)
            .padding(.leading, 20)
            .background(Color.blue) */
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
