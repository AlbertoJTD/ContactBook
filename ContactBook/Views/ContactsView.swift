//
//  ContactsView.swift
//  ContactBook
//
//  Created by Alberto Jesus Tepale Diagas on 15/02/25.
//

import SwiftUI

struct ContactsView: View {
    @EnvironmentObject var viewModel: AddressBookViewModel // Share an object between views without passing it manually in each view
    
    var body: some View {
        ForEach(0..<viewModel.contactCount) { index in
            HStack {
                let contact = viewModel.contact(atIndex: index)
                VStack {
                    Text(contact.name)
                    Text(contact.displayPostalCode)
                        .font(.caption2)
                }
                
                Button(action: {
                    viewModel.toggleFavorite(atIndex: index)
                }) {
                    contact.isFavorite ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

#Preview {
    ContactsView()
        .environmentObject(AddressBookViewModel())
}
