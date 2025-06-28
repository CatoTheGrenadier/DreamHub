//
//  CalendarPageView.swift
//  DreamHub
//
//  Created by Yi Ling on 6/27/25.
//

import Foundation
import SwiftUI
import ElegantCalendar

struct CalendarPageView: View {
    // Step 2: Keep track of selected date
    @State private var selectedDate: Date = Date() // Start at today

    var body: some View {
        NavigationStack {
            ElegantCalendarView(
                calendarManager: calendarManager
            )
            .onDateSelected { date in
                selectedDate = date
                print("Selected: \(date)")
            }
            .frame(maxHeight: 400)
            .navigationDestination(isPresented: Binding(
                get: { selectedDate != nil },
                set: { _ in })) {
                    DreamView(date: selectedDate)
            }
        }
    }

    // Step 3: Create a calendar manager
    private var calendarManager: ElegantCalendarManager {
        ElegantCalendarManager(
            configuration: CalendarConfiguration(
                startDate: Date.distantPast,
                endDate: Date.distantFuture
            ),
            initialMonth: Date(), // Starts on today’s month
            calendarTheme: .default // Or your custom theme below
        )
    }
}

