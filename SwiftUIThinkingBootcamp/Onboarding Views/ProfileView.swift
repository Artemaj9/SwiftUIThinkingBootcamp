//
//  ProfileView.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack (spacing: 20){
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("You are \(currentUserAge ?? 0) years old!")
            Text("Your gender is \(currentUserGender ?? "unknown")")
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
        currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
