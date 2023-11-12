//
//  OrdersView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI
import CoreData

struct OrdersView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        entity: Order.entity(),
        sortDescriptors: []
    ) var orders: FetchedResults<Order>

    
    var body: some View {
        List {
            ForEach(orders) { order in
                VStack(alignment: .leading) {
                    Text("Order ID: \(order.id ?? "")")
                        .font(.headline)
                    
                    if let orderDate = order.date {
                        Text("Date: \(orderDate, formatter: DateFormatter.shortDateFormatter)")
                            .font(.subheadline)
                    }
                    
                    if let customer = order.customer {
                        Text("Customer: \(customer.firstName ?? "") \(customer.lastName ?? "")")
                            .font(.subheadline)
                    }
                    
                    if let vehicle = order.vehicle {
                        Text("Vehicle: \(vehicle.type ?? "")")
                            .font(.subheadline)
                    }
                    
                    if let purchase = order.purchase {
                        Text("Quantity: \(purchase.quantity)")
                            .font(.subheadline)
                    }
                }
            }

        }
        .navigationBarTitle("Orders")
    }
}

