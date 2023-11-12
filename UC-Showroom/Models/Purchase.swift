//
//  Purchase.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(PurchaseEntity)
public class PurchaseEntity: NSManagedObject {
    @NSManaged public var date: Date?
    @NSManaged public var quantity: Int16
    @NSManaged public var totalPrice: Decimal
    
    func getFormattedQuantity() -> String {
           return "\(quantity)"
       }
    
    //Relationships
    @NSManaged public var customer: CustomerEntity?
    @NSManaged public var vehicles: NSSet?
}

extension PurchaseEntity {
    
}

