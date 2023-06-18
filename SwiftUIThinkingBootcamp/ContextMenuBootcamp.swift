//
//  ContextMenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .purple
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10) {
                Image(systemName: "house.fill")
                    .font(.title)
                Text("Swiftful Thinking")
                    .font(.headline)
                Text("How to use Context Menu")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(Color.green.cornerRadius(10))
            .contextMenu(menuItems: {
                Button {
                    backgroundColor = .gray
                } label: {
                    Label("Sharepost", systemImage: "flame.fill")
                }
                
                Button {
                    backgroundColor = .pink
                } label: {
                    Text("Report post")
                }
                
                Button {
                    backgroundColor = .orange
                } label: {
                    HStack {
                        Text("Like post")
                        Image(systemName: "heart.fill")
                    }
                }
                
                Text("Menu Item 2")
                Text("Menu Item 3")
            })
        }
    }
}
struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
