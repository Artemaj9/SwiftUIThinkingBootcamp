//
//  OnboardingView.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI



struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age : Double = 50
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            //content
            ZStack {
                
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGengderSection
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
                //buttons
                VStack {
                    Spacer()
                    bottomButton
                    
                }
                .padding(30)
            }
        }
    }
    
}



struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
        
    }
}

//MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN Up" :
                onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
        
    }
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                    
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding(.horizontal)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("Whats your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                    
                )
            
            TextField("Your name here...",text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
        
    }
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    ,alignment: .bottom
                    
                )
            
            Text("\( String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGengderSection: some View {
        
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Menu {
                Picker(selection: $gender,
                       label:
                        Text("smth here"),
                       content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-binary")
                })
                // .pickerStyle(MenuPickerStyle())
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}
    
//MARK: FUNCTIONS
    
    
extension OnboardingView {
        
    func handleNextButtonPressed() {
        
        if onboardingState == 3 {
            // sign in
        } else {
            withAnimation((.spring()) {
                onboardingState += 1
            }
        }
                          
        }
    }

