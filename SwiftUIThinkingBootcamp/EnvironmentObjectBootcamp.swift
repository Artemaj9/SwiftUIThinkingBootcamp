//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 20.06.2023.
//

import SwiftUI


// ObservedObject
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    init() {
        getData()
    }
    
        
        func getData(){
//            self.dataArray.append("iPhone")
//            self.dataArray.append("ipad")
            self.dataArray.append(contentsOf: ["iPhone", "iPad", "Macbook", "Apple Watch"])
        }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach (viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                  
                }
                .navigationTitle("iOS Devices")
                
            }
            .environmentObject(viewModel)
        }
    }
}


struct DetailView: View {
    
    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        ZStack {
            //background
            Color.orange.ignoresSafeArea()
            
            //foreground
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
          
        }
    }
}

struct FinalView: View {
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        
        //background
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue,.black,.black,.black,.black]), startPoint: .bottomTrailing, endPoint: .topTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}



struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
