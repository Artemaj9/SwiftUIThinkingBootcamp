//
//  BindingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }
    }
}



struct ButtonView: View {
              
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var logic : Bool = false
    @State var buttonColor: Color = .blue
    @State var logicButton = false
    var  body: some View {
        
        Button {
            logic.toggle()
            logicButton.toggle()
            backgroundColor = logic ? .orange : .green
            buttonColor = logicButton ? .pink : .blue
            title = "NEW TITLE!"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
