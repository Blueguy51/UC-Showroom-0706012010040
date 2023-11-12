//
//  ContentView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        TabView {
            CustomerFormView()
                .tabItem {
                    Label("Customer", systemImage: "person")
                }
            VehicleSelectionView()
                .tabItem {
                    Label("Vehicle", systemImage: "car")
                }
            OrdersView()
                .tabItem {
                    Label("Orders", systemImage: "folder")
                }
        }
        .environment(\.managedObjectContext, viewContext)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

