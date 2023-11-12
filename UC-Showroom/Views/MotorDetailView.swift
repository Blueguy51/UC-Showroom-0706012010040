//
//  MotorDetailView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct MotorDetailView: View {
    let motorbike: MotorbikeEntity
    
    var body: some View {
        VStack {
            VehicleDetailView(vehicle: motorbike)
            
            Text("Fuel Capacity: \(motorbike.getFuelCapacityInLiters()) Liters")
                .font(.subheadline)

            Text("Baggage Size: \(motorbike.baggageSize)")
                .font(.subheadline)

        }
    }
}


