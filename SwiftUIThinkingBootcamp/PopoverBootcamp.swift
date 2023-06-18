//
//  PopoverBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen = false
    @State var scale : CGFloat = 1.0
    @State var showDetails: Bool = false
    @State var opacity = 1.0
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                //String protocol approach
                
                Button("BUTTON") {
                    
                    showNewScreen.toggle()
                }
                
                .font(.largeTitle)
                Spacer()
            }
                
                //METHOD 1 - SHEET
                //            .sheet(isPresented: $showNewScreen, content: {
                //                NewScreen()
                //            })
                //     METHOD 2 - TRANSITIO
               
            ZStack {
                if showNewScreen {
                    NewScreen(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                       // .transition(.move(edge: .bottom))
                    //
                    //.animation(.spring(), value: $showNewScreen)

                }
            }
            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
//
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0: UIScreen.main.bounds.height)
//                .animation(.spring(), value: showNewScreen)
//
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    @Binding var showNewScreen : Bool
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                showNewScreen.toggle()
               // dismissScreen()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    
            }

        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
