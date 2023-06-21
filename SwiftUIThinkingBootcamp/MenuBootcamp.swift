//
//  MenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 22.06.2023.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("Click me@") {
            Button("One") {
            }
            Button("Two") {
            }
            Button("Three") {
            }
            Button("Four") {
            }
        }
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
