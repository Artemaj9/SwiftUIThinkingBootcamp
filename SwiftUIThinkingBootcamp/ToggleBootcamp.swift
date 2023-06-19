//
//  ToggleBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        
        
        VStack {
            HStack{
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
