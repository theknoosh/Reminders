//
//  DueDate.swift
//  Reminders
//
//  Created by DARRELL A PAYNE on 3/23/22.
//

import Foundation


enum DueDate {
    case today
    case tomorrow
    case yesterday
    case custom(Date)
}

extension DueDate {
    
    var value: Date {
        switch self {
        case .today:
            return Date.today
        case .tomorrow:
            return Date.tomorrow
        case .yesterday:
            return Date.yesterday
        case .custom(let date):
            return date
        }
    }
    
    var title: String {
        switch self {
        case .today:
            return "Today"
        case .tomorrow:
            return "Tomorrow"
        case .yesterday:
            return "Yesterday"
        case .custom(let date):
            return date.formatAsString
        }
    }
    
    var isPastDue: Bool {
        value < Date()
    }
    
    static func from(value: Date) -> DueDate {
        let calendar = NSCalendar.current
        if calendar.isDateInToday(value) {
            return DueDate.today
        } else if calendar.isDateInToday(value) {
            return DueDate.tomorrow
        }else if calendar.isDateInToday(value) {
            return DueDate.custom(value)
        }
        
        return DueDate.custom(value)
    }
}