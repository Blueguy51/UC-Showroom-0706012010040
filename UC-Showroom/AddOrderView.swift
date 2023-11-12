//
//  AddOrderView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI
import CoreData

struct AddOrderView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var customerName = ""
    @State private var vehicleType = ""
    @State private var vehicleModel = ""

    var body: some View {
        Form {
            Section(header: Text("Customer Information")) {
                TextField("Customer Name", text: $customerName)
            }

            Section(header: Text("Vehicle Information")) {
                TextField("Vehicle Type", text: $vehicleType)
                TextField("Vehicle Model", text: $vehicleModel)
            }

            Button("Add Order") {
                addOrder()
            }
        }
        .navigationTitle("Add Order")
    }

    private func addOrder() {
        withAnimation {
            let newOrder = Order(context: viewContext)
            newOrder.timestamp = Date()
            newOrder.id = UUID()
            newOrder.customerName = customerName
            newOrder.vehicleType = vehicleType
            newOrder.vehicleModel = vehicleModel

            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
