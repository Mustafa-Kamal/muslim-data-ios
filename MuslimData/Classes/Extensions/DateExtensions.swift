//
//  Date+Extensions.swift
//  MuslimData
//
//  Created by Kosrat D. Ahmad on 9/29/18.
//

import Foundation

// MARK: - Date Extensions

public extension Date {
    /// Convert date to string time by given time format.
    ///
    /// - Parameter format: TimeFormat object.
    /// - Returns: Formatted date to string time.
    func toTime(format: TimeFormat) -> String {
        let dateFormatter = DateFormatter()
        switch format {
        case .time24:
            dateFormatter.dateFormat = "HH:mm"
            dateFormatter.locale = Locale(identifier: "en_GB")
        case .time12:
            dateFormatter.dateFormat = "hh:mm a"
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        }
        return dateFormatter.string(from: self)
    }

    /// Add minutes to the date.
    ///
    /// - Parameter minutes: minutes to be added to the date.
    /// - Returns: New date that added the specified minutes.
    func addMinutes(_ minutes: Double) -> Date {
        addingTimeInterval(60 * minutes)
    }

    /// Add hours to the date.
    ///
    /// - Parameter hours: hours to be added to the date.
    /// - Returns: New date that added the specified hours.
    func addHours(_ hours: Double) -> Date {
        addingTimeInterval(60 * 60 * hours)
    }
}
