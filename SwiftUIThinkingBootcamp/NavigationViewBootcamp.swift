//
//  NavigationViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Hello, World!",
                               destination: BackgroundAndOverlayBootcamp())
                .padding()
                NavigationLink("Hey, Man!",
                               destination: MyOtherScreen())
                .padding()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom)
            .navigationTitle("All Inboxes")
          //  .navigationBarTitleDisplayMode(.large)
           // .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                HStack{
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            },
            trailing: NavigationLink(destination:  MyOtherScreen(),
                                     label: {
                Image(systemName: "gear")
            })
                                )
            }
    }
}

struct MyOtherScreen: View {
    
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .navigationBarBackButtonHidden(true)
            
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                .font(.largeTitle)
                
                
                NavigationLink("Click here",
                               destination: GradientsBootcamp())
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
