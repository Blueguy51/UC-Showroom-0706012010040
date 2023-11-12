//
//  Order.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(Order)
public class Order: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var date: Date
    @NSManaged public var customer: Customer?
    @NSManaged public var vehicle: Vehicle?
}

extension Order {
    public var wrappedDate: Date {
        date 
    }
}

extension DateFormatter {
    static let shortDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter
    }()
}

