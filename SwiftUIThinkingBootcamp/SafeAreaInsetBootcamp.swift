//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 22.06.2023.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay(
//            Text("Hi")
//                .frame(maxWidth: .infinity)
//                .background(Color.yellow)
//            ,alignment: .bottom
//            )
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .padding()
                   // .padding(.top, 10)
            //.frame(maxWidth: .infinity)
            .background(Color.yellow)
            .clipShape(Circle())
            .padding()
          
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
