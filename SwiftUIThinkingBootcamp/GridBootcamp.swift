//
//  GridBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 17.06.2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 14, alignment: nil),
        GridItem(.flexible(), spacing: 14, alignment: nil),
        GridItem(.flexible(), spacing: 14, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        .background(Color.blue)
                       
                       
                     
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                        .background(Color.red)
                       
                       
                     
                    ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(height: 150)
                            }
                    }
                    /*   Rectangle()
                     .fill(Color.white)
                     .frame(height: 400)
                     LazyVGrid(columns: columns) {
                     ForEach(0..<50) { index in
                     Rectangle()
                     .frame(height: 150)
                     } */
                    
    
            })
        }
    }
}
struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
