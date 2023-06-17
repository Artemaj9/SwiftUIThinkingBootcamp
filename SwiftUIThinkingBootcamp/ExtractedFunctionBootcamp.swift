//
//  ExtractedFunctionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        ZStack {
            //background
            backgroundColor.ignoresSafeArea()
            //content
           contentLayer
        }
    }
    
    
    
    
    
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
               buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
