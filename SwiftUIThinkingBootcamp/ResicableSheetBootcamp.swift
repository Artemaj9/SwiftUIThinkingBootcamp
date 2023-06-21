//
//  ResicableSheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 22.06.2023.
//

import SwiftUI

struct ResicableSheetBootcamp: View {
    
    @State private var showsheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showsheet.toggle()
        }
        .sheet(isPresented: $showsheet) {
            MyNextView(detents: $detents)
              //  .presentationDetents([.height(500)])  //Farction safer
              //  .presentationDetents([.fraction(0.4)])
              //  .presentationDetents([.medium, .large])
             //   .presentationDragIndicator(.visible)
            // .interactiveDismissDisabled()
            //    .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
                .presentationDetents([.medium, .large, .fraction(0.3)], selection: $detents)
        }
        .onAppear{
            showsheet = true
        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack(spacing: 20) {
               
                
                Button("30%") {
                    detents = .fraction(0.3)
                }
                .buttonStyle(.borderedProminent)
                
                Button("MEDIUM") {
                    detents = .medium
                }
                .buttonStyle(.borderedProminent)
                Button("LARGE") {
                    detents = .large
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}
        
        
struct ResicableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResicableSheetBootcamp()
    }
    
}
