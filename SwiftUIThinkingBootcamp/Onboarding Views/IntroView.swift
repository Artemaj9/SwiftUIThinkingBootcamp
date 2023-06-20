//
//  IntroView.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(colors: [.cyan,.blue], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                Text("Onboarding View")
                    .foregroundColor(.white)
            }
            //if user is signed in
            //profile view
            //else
            //onboarding view
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
