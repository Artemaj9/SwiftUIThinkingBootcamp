//
//  AppStarageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI

struct AppStarageBootcamp: View {
    
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    var body: some View {
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Artem"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
                
            }
        }
//        .onAppear{
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStarageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStarageBootcamp()
    }
}
