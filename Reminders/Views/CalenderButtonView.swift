//
//  CalenderButtonView.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 4/1/22.
//

import SwiftUI

struct CalenderButtonView: View {
    
    let title: String
    @Binding var showCalendar: Bool
    @State var selectedDate: Date = Date.today
    var onSelected: (Date) -> Void
    
    var body: some View {
        VStack {
            Button(title) {
                showCalendar = true
            }.popover(isPresented: $showCalendar) {
                DatePicker("Custom", selection: $selectedDate, displayedComponents: .date)
                    .labelsHidden()
                    .datePickerStyle(.graphical)
                    .onChange(of: selectedDate) { newValue in
                        onSelected(newValue)
                        showCalendar = false
                    }
            }
        }
    }
}

struct CalenderButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderButtonView(title: "Custom", showCalendar: .constant(true), onSelected: {_ in})
    }
}
