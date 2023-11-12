//
//  TruckDetailView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct TruckDetailView: View {
    let truck: TruckEntity
    
    var body: some View {
        VStack {
            VehicleDetailView(vehicle: truck)
            
            Text("Cargo Area: \(truck.getCargoAreaInCubicMeters()) Cubic Meters")
                .font(.subheadline)
            
            Text("Wheel Count: \(truck.wheelCount)")
                .font(.subheadline)
        }
    }
}

