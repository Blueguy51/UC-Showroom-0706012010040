//
//  CostumerFormView.swift
//  UC-Showroom
//
//  Created by Timothyus Kevin Dewanto on 12/11/23.
//

import SwiftUI
import CoreData

struct CustomerFormView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var name: String = ""
    @State private var address: String = ""
    @State private var phone: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Customer Details")) {
                TextField("Name", text: $name)
                
            }
            
            Section {
                Button("Save") {
                    saveCustomer()
                }
            }
        }
        .navigationBarTitle("Customer Form")
    }
    
    func saveCustomer() {
        let newCustomer = Customer(context: viewContext)
        
        do {
            try viewContext.save()
        } catch {
            print("Error saving customer: \(error.localizedDescription)")
        }
        
        name = ""
        address = ""
        phone = ""
    }
}

struct CustomerFormView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerFormView()
    }
}
