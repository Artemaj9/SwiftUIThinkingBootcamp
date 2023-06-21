//
//  NavigationStackBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits  = ["Apple", "Orange", "Banana"]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath){
            
            //NavigationView no Lazy!!!
            //Major benefit of NavigtionStack - lazy fashion!!
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf: ["Coconut", "Watermelon","Mango"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    ForEach (0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                        
//                        NavigationLink(destination: {
//                            MySecondScreen(value: x)
//                        },
//                                       label: {
//                            Text("Click me: \(x)")
//                        })
                    }
                   
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
        }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN:  \(value)")
        }
       
        }
    }
}
struct MySecondScreen: View {
    
    let value: Int
    init (value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    
    var body: some View {
        Text("Screen  \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
