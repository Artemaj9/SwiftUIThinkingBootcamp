//
//  ListBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
    "tomato", "potato", "carrot"]
    var body: some View {
        NavigationStack{
            ZStack {
                List {
                    Section("Fruit") {
                        ForEach(fruits, id: \.self) {fruit in
                            Text(fruit.capitalized)
                        }
                        
                        .onDelete (perform: delete)
                        .onMove(perform: move)
                    }
                    Section("Veggies") {
                        ForEach(veggies, id: \.self) {fruit in
                            Text(fruit.capitalized)
                                .background(Color.blue)
                        }
                        
                    }
                }
                .navigationTitle("Grocery List")
                .listStyle(.sidebar)
            }
        }
       
    }
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move (indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
