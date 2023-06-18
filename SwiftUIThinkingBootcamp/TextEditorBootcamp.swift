//
//  TextEditorBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String  = "This is the startting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height:250)
                    .foregroundColor(.purple)
                    .colorMultiply(Color.gray)
                //Instead background!!!
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
