//
//  BadgesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello, world!")
                .badge("NEW ITEMS!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
        
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "star.fill")
//                    Text("Hello")
//            }
//                .badge(2)
//            Color.blue
//                .tabItem {
//                    Image(systemName: "moon.fill")
//                    Text("Hello")
//            }
//                .badge(8)
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
