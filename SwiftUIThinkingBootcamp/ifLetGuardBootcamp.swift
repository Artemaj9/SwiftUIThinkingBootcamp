//
//  ifLetGuardBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI

struct ifLetGuardBootcamp: View {
    
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = nil
    var body: some View {
        NavigationStack {
            VStack{
                Text("Here we are practicing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                
                //DO NOT FORCE UNWRAP VALUES!!
                Text(displayText ?? "")
                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = true
            }
        } else {
            displayText = "Error. There is no user ID!"
        }
        
    }
// Same functions!!
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no user ID!"
            return
            //Nothing below this will execute
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = true
            
        }
    }
}



struct ifLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuardBootcamp()
    }
}
