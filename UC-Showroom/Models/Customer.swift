//
//  Customer.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import Foundation
import CoreData

@objc(CustomerEntity)
public class CustomerEntity: NSManagedObject {
    @NSManaged public var name: String?
    @NSManaged public var address: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var idCard: String?

    func getFullAddress() -> String {
          var fullAddress = ""
          if let address = address {
              fullAddress += address
          }
          if let phoneNumber = phoneNumber {
              fullAddress += " | " + phoneNumber
          }
          return fullAddress
      }
    
    // Relationships
    @NSManaged public var mpurchase: PurchaseEntity?
}

extension CustomerEntity {
    
}

