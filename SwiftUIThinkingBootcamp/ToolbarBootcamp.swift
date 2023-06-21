//
//  ToolbarBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                
            
                VStack(spacing: 40) {
                    ScrollView {
                        TextField("Placeholder", text: $text)
                        .autocorrectionDisabled(true)
                      
                            .background {
                                Color.white
                            }
                            .padding(50)
                            .tint(.mint)
                    
                        ForEach(1..<300) {_ in
                            Text("❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️")
                                .padding(7)
                                .foregroundColor(.white)
                        }
                    }
                    Text("⭐️⭐️⭐️⭐️⭐️")
                        .foregroundColor(.white)
                }
                //                    .navigationBarItems(
                //                        leading: Image(systemName: "heart.fill"),
                //                        trailing: Image(systemName: "gear"))
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(.mint)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "star.fill")
                        .foregroundColor(.pink)
                }
                ToolbarItem(placement: .keyboard) {
                    Image(systemName: "moon.stars.fill")
                }
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
