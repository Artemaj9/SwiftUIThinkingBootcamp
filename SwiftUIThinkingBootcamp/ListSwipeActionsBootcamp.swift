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
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
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
