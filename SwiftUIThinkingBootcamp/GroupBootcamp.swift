//
//  GroupBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 22.06.2023.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world")
            Text("Hello, world")
            Group {
                Text("Hello, world")
                Text("Hello, world")
            }
            .foregroundColor(.green)
            .font(.headline)
        }
        
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
