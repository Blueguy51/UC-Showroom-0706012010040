//
//  CarDetailView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct CarDetailView: View {
    let car: CarEntity
    
    var body: some View {
        VStack {
            VehicleDetailView(vehicle: car)
            
            Text("Trunk Size: \(car.getTrunkSizeInLiters()) Liters")
                .font(.subheadline)
        }
    }
}

