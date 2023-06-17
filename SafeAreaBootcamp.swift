//
//  SafeAreaBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
           .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
                
           )
        }
        
        
        
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                   // .background(Color.red)
//
//        }
        }
    

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
