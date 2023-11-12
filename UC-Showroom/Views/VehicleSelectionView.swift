//
//  VehicleSelectionView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI
import CoreData

struct VehicleSelectionView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        entity: Vehicle.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Vehicle.type, ascending: true)]
    ) var vehicles: FetchedResults<Vehicle>
    
    @State private var selectedVehicle: Vehicle?
    
    var body: some View {
        List {
            ForEach(vehicles) { vehicle in
                VStack(alignment: .leading) {
                    Text(vehicle.type ?? "")
                        .font(.headline)
                    if let price = vehicle.price {
                        Text("Price: \(price)")
                            .font(.subheadline)
                    }
                    if let year = vehicle.year {
                        Text("Year: \(year)")
                            .font(.subheadline)
                    }
                }
                .onTapGesture {
                    selectedVehicle = vehicle
                }
            }
        }
        .alert(item: $selectedVehicle) { vehicle in
            Alert(title: Text("Selected Vehicle"), message: Text(vehicle.type ?? ""), dismissButton: .default(Text("OK")))
        }
        .navigationBarTitle("Vehicle Selection")
    }
}

struct VehicleSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleSelectionView()
    }
}

