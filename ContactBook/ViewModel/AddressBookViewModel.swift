//
//  AddressBookViewModel.swift
//  ContactBook
//
//  Created by Alberto Jesus Tepale Diagas on 15/02/25.
//

import Foundation

class AddressBookViewModel: ObservableObject {
    var addressBook = AddressBook()
    var contactCount: Int { addressBook.numberOfContacts }
    var favoritedContactCount: Int { addressBook.numberOfFavorites }
    
    func toggleFavorite(atIndex index: Int) {
        addressBook.toggleFavorite(atIndex: index)
    }
    
    func contact(atIndex index: Int) -> Contact {
        addressBook.contact(atIndex: index)
    }
}
