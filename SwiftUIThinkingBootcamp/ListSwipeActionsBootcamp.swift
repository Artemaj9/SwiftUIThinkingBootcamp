//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 21.06.2023.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                        }
                        .tint(.cyan)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Junk") {
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                        }
                        .tint(.purple)
                    }
            }
         //   .onDelete(perform: delete)
        }
    }
    func delete(indexSet: IndexSet) {
    }
}
struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
