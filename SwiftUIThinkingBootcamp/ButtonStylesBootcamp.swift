//
//  ButtonStylesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 23))
            .buttonStyle(.borderedProminent)
            
            Button("Plain") {
                
            }
            .frame(height: 85)
            .frame(width: .infinity)
            .controlSize(.large)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            
            Button("Bordered") {
                
            }
            .frame(height: 85)
            .frame(width: .infinity)
//            .buttonStyle(.bordered)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
            
            
            Button("Bordered Prominent") {
                
            }
            .frame(height: 85)
            .frame(width: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            
            
            
            Button("Borderless Style") {
                
            }
            .frame(height: 85)
            .frame(width: .infinity)
//            .buttonStyle(.borderless)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
