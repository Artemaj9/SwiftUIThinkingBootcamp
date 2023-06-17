//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
/*        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            .background(
            //    Color.green
//                LinearGradient (
//                    gradient: Gradient(colors: [Color("MyAwesomeColor"), Color.blue] ), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color("MyAwesomeColor")]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
                
            )
            .background(
            Circle()
                .fill(Color.yellow)
                .frame(width: 120, height: 120, alignment: .center)
            )
 */
        
     /*   Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
        .overlay(
        Text("1")
            .font(.largeTitle)
            .foregroundColor(.white)
        )
        .background(
        Circle()
            .fill(Color.purple)
            .frame(width: 110, height: 110)
        ) */
        
       /* Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
                    
            )
            .background(
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 200, height: 200)
                ,alignment: .center)
            ) */
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
            Circle()
                .fill(
                LinearGradient (
                    gradient: Gradient(colors: [Color.blue,Color.mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: Color("MyAwesomeColor").opacity(0.7), radius: 10,x: 0.0, y: 10)
                .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                        )
                        .shadow(color: Color.purple.opacity(0.7), radius: 10,x: 0.0, y: 10)
                    , alignment: .bottomTrailing)
            )
        
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
