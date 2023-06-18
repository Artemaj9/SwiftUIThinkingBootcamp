//
//  ActionSheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var  showConfirmationDialog: Bool = false
    @State var  backgroundColor: Color = .white
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            Button("Click me"){
                showConfirmationDialog.toggle()

            }
            .confirmationDialog("This is the title", isPresented: $showConfirmationDialog){
                Button("Red") {backgroundColor = .red}
                Button("Green") {backgroundColor = .green}
                Button("Yellow") {backgroundColor = .yellow}
                Button("Remove color", role: .destructive) {backgroundColor = .clear}
                Button("CANCEL", role: .cancel) {}
            } message: {
                Text("This is the message")
            }
                
            }
            
        }
    }

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
