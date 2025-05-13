//
//  BerechnungButton.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct BerechnungButton: View {
    var body: some View {
        Button(action: {
            // Add functionality later
        }) {
            Text("Berechnung")
                .foregroundColor(.white)
                .bold()
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .cornerRadius(8)
        }
        .padding(.top)
    }
}
