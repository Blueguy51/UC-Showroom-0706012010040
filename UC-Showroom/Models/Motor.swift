//
//  Motor.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(MotorbikeEntity)
public class MotorbikeEntity: VehicleEntity {
    @NSManaged public var baggageSize: Decimal
    @NSManaged public var fuelCapacity: Decimal
    
    func getFuelCapacityInLiters() -> Double {
        return NSDecimalNumber(decimal: fuelCapacity).doubleValue
    }
    
    func getBaggageSize() -> Double {
        return NSDecimalNumber(decimal: baggageSize).doubleValue
    }
    
    //Relationships
    @NSManaged public override var purchase: PurchaseEntity?
}

extension MotorbikeEntity {

}
