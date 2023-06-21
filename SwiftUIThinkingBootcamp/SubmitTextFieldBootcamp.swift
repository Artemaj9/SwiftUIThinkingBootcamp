//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    var body: some View {
        TextField("Placeholder...", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Something to the console!")
            }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
