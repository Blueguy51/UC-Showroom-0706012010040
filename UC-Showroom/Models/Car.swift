//
//  Car.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(CarEntity)
public class CarEntity: VehicleEntity {
    @NSManaged public var fuelType: String?
    @NSManaged public var trunkSize: Decimal
    
    func getTrunkSizeInLiters() -> Double {
        return NSDecimalNumber(decimal: trunkSize).doubleValue
    }
    
    //Relationships
    @NSManaged public override var purchase: PurchaseEntity?
}

extension CarEntity {
    
}

