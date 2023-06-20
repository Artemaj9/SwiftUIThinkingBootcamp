//
//  ViewModelBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI


struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
class FruitViewModel: ObservableObject {
   @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = true
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        
            
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }

func deleteFruit(index: IndexSet) {
    fruitArray.remove(atOffsets: index)
    
}
}

struct ViewModelBootcamp: View {
//    @State var fruitArray: [FruitModel] = [
//    FruitModel(name: "Apples", count: 5)]
    //@State object -> USE THIS ON CREATION / INIT
    ////@Observed Object ->  USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                      
                    }
                    .onDelete (perform: fruitViewModel.deleteFruit)
            }
                NavigationLink("Navigation Link") {
                    RandomScreen(fruitViewModel: fruitViewModel)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
//            .onAppear {
//                fruitViewModel.getFruits()
//            }
        }
    }
       
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismis
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        
        ZStack {
            
            Color.green.ignoresSafeArea()
            
            
            VStack {
                ForEach(fruitViewModel.fruitArray) {fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
//
//            Button  {
//
//            } label: {
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }
            
        }

    }
}
struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//        RandomScreen()
    }
}
