//
//  DatePickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Artem on 19.06.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startinDate: Date = Calendar.current.date(from: DateComponents( year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    
    
    
    var body: some View {
        //        DatePicker("Select a Date", selection: $selectedDate)
        //        //Cool styles!
        ////            .datePickerStyle(.graphical)
        //            .datePickerStyle(
        //           // GraphicalDatePickerStyle()
        ////                WheelDatePickerStyle()
        //            )
        //    }
        
//        DatePicker("Select a date",
//                   selection: $selectedDate,
//                   displayedComponents: [.date, .hourAndMinute])
        
        DatePicker("Select a date", selection: $selectedDate, in: startinDate...endingDate)
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
