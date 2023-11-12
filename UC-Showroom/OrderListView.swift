//
//  OrderListView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI
import CoreData

struct OrderListView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Order.timestamp, ascending: true)],
        animation: .default)
    private var orders: FetchedResults<Order>

    var body: some View {
        List {
            ForEach(orders) { order in
                Text("Order ID: \(order.id?.uuidString ?? "")")
            }
        }
        .navigationTitle("Orders")
    }
}
