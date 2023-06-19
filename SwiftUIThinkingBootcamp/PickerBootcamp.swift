//
//  PickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 18.06.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selectedNumber: Int = 0
    @State var selection: String = "1"
    @State var filterOptions: [String] = [
    "Msot Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.tintColor
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        
        Picker (
            selection: $selection,
            label: Text("Picker"),
                content: {
            ForEach(filterOptions.indices) {
                index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        })
        .pickerStyle(.segmented)
        .background(Color.yellow)
        
        
        
        
        
        
        Menu {
            Picker(selection: $selectedNumber, label: EmptyView()) {
                ForEach(0..<10) {
                    Text("\($0)")
                }
            }
        } label: {
            customLabel
        }
        
    }
    
    
    var customLabel: some View {
        HStack {
            Image(systemName: "paperplane")
            Text(String(selectedNumber))
            Spacer()
            Text("\u{2335}")
                .offset(y:  -5)
        }
        .foregroundColor(.white)
        .font(.title)
        .padding()
        .frame(height: 32)
        .background(Color.blue)
        .cornerRadius(16)
        .shadow(color: .purple, radius: 10, x: 1, y: 1)
        .offset(y: 10)
    }
}
    
    //        Picker(
    //            selection: .constant(1),
    //            content: {
    //                Text("1").tag(1)
    //                Text("2").tag(2)
    //            },
    //            label: {
    //                List {
    //                Text("Picker")
    //            }
    //            })
    //        .pickerStyle(MenuPickerStyle())
    //        VStack {
    //            HStack {
    //                Text("Age")
    //                Text(selection)
    //            }
    //            Picker(
    //            selection: $selection,
    //            label: Text("Picker"),
    //                content: {
    //                    ForEach(18..<100) { number in
    //                        Text("\(number)").tag("\(number)")
    //                    }
    //            })
    ////            .pickerStyle(.wheel)
    //            .pickerStyle()
    //        }
    


struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
