//
//  TextFieldBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI


struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray : [String] = []
    var body: some View {
        NavigationStack{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.green)
                    .font(.headline)
                
                Button {
                    if textisAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textisAppropriate() ? Color.blue : Color.red )
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textisAppropriate())
                
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Textfield Bootcamp!")
        }
    }
    
    
    func textisAppropriate() -> Bool {
        //check text
        if textFieldText.count >= 3{
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
