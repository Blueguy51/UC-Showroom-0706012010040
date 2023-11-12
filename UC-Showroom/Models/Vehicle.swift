//
//  Vehicle.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(VehicleEntity)
public class VehicleEntity: NSManagedObject {
    @NSManaged public var model: String?
    @NSManaged public var year: Int16
    @NSManaged public var passengerCount: Int16
    @NSManaged public var manufacturer: String?
    @NSManaged public var price: Decimal

    @NSManaged public var purchase: PurchaseEntity?
    
    func getFormattedPrice() -> String {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(nonretainedObject: price)) ?? ""
        }
        
        func getFullName() -> String {
            var fullName = ""
            if let manufacturer = manufacturer {
                fullName += manufacturer
            }
            if let model = model {
                fullName += " " + model
            }
            return fullName
        }
}

extension VehicleEntity {
    public var wrappedModel: String {
        model ?? ""
    }
    
    public var wrappedManufacturer: String {
        manufacturer ?? ""
    }
}

extension VehicleEntity {
    
}
