//
//  TernaryBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = true
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE.")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .blue : .red)
                .frame(
                    width: isStartingState ? 200 : 300,
                    height: isStartingState ? 400 : 50)
            
            Spacer()
        }
        
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
