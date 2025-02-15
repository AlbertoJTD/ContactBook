//
//  ContactsView.swift
//  ContactBook
//
//  Created by Alberto Jesus Tepale Diagas on 15/02/25.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        ForEach(0..<4) { index in
            HStack {
                VStack {
                    Text("Name at index \(index)")
                    Text("Postal code")
                        .font(.caption2)
                }
                
                Button(action: {
                    print("Star tapped at index: \(index)")
                }) {
                    Image(systemName: "star")
                }
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

#Preview {
    ContactsView()
}
