//
//  AddressBookView.swift
//  ContactBook
//
//  Created by Alberto Jesus Tepale Diagas on 05/02/25.
//

import SwiftUI

struct AddressBookView: View {
    private var viewModel = AddressBookViewModel()
    @State private var displayFavoriteCount = true
    
    var body: some View {
        VStack {
            Text("Address Book")
                .font(.title)
                .padding()
            Spacer()
            
            ContactsView()
            Spacer()
            
            if displayFavoriteCount {
                HStack {
                    Text("You have \(viewModel.favoritedContactCount) favorite" + (viewModel.favoritedContactCount != 1 ? "s" : ""))
                        .padding()
                    Spacer()
                }
            }
            
            Toggle("Display number of favorites", isOn: $displayFavoriteCount)
                .padding()
        }
        .background(Color(red: 254/255, green: 240/255, blue: 229/255))
    }
}

#Preview {
    AddressBookView()
}
