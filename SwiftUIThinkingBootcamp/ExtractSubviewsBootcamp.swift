//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
          
            contentLayer
        }
        
    }
    var contentLayer: some View {
        HStack(spacing:20) {
            MyItem(title: "Oranges", count: 5, color: .orange)
            MyItem(title: "Apples", count: 9, color: .red)
            MyItem(title: "Bananas", count: 7, color: .yellow)
        }
    }
}
struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding(20)
        .background(color)
        .cornerRadius(20)
    }
}
