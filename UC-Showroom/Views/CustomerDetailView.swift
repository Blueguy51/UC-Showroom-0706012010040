//
//  CustomerDetailView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct CustomerDetailView: View {
    let customer: CustomerEntity
    
    var body: some View {
        VStack {
            Text("Name: \(customer.name ?? "")")
                .font(.title)
            
            Text("Address: \(customer.getFullAddress())")
                .font(.subheadline)
        }
    }
}



