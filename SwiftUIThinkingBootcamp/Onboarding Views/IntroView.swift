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
            RadialGradient(colors: [.blue,.purple], center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            if currentUserSignedIn {
               ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .opacity))
            } else {
              OnboardingView()
                    .transition(.asymmetric(insertion: .opacity, removal: .move(edge: .leading)))
            }
            //if user is signed in
            //profile view
            //else
            //onboarding view
        }
        .animation(.spring(), value: currentUserSignedIn)
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
