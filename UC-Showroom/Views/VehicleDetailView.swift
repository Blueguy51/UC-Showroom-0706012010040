//
//  VehicleDetailView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct VehicleDetailView: View {
    let vehicle: VehicleEntity
    
    var body: some View {
        VStack {
            Text(vehicle.getFullName())
                .font(.title)
            
            Text(vehicle.getFormattedPrice())
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}


