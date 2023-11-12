//
//  Truck.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(TruckEntity)
public class TruckEntity: VehicleEntity {
    @NSManaged public var wheelCount: Int16
    @NSManaged public var cargoArea: Decimal
    
    func getCargoAreaInCubicMeters() -> Double {
        return NSDecimalNumber(decimal: cargoArea).doubleValue
    }
    
    //Relationships
    @NSManaged public override var purchase: PurchaseEntity?
}

extension TruckEntity {
    
}

