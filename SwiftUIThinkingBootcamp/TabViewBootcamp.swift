//
//  TabViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 19.06.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    
 //   init() {UITabBar.appearance().barTintColor = UIColor.black}
 
    let icons: [String] = [
    "heart.fill", "globe", "house.fill","person.fill"
    ]
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) {icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
        }
        .background(
            RadialGradient(colors: [.red, .cyan], center: .center, startRadius: 20, endRadius: 300))
        .frame(height: 300)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.purple)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.cyan)
//        }
//        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
        
        
        
//        TabView {
//
//            //            ZStack {
//            //               // Color.green.ignoresSafeArea()
//            //                Text("Home Tab")
//            //                    .font(.largeTitle)
//            //                    .foregroundColor(.white)
//            //            }
//            Text("HOME TAB")
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("HOME")
//                        .padding()
//                }
//            Text("BROWSE TAB")
//                .tabItem(){
//                    Image(systemName: "globe")
//                    Text("Browse")
//                        .padding()
//                }
//            Text("PROFILE")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                        .padding()
//                }
//
//        }
//        .onAppear() {
//            UITabBar.appearance().backgroundColor = .lightGray
//        }

            }
    }


struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
