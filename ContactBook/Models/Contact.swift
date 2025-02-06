//
//  Contact.swift
//  ContactBook
//
//  Created by Alberto Jesus Tepale Diagas on 05/02/25.
//

import Foundation

struct Contact {
    let name: String
    let postalCode: Int
    var isFavorite: Bool = false
    
    var displayPostalCode: String {
        "Postal Code: \(String(postalCode))"
    }
}
