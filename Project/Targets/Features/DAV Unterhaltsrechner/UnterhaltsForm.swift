//
//  UnterhaltsForm.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.

import SwiftUI

struct UnterhaltsForm: View {
    @State private var kind1: Double = 0
    @State private var kind2: Double = 0
    @State private var kind3: Double = 0
    @State private var einkommen: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack(spacing: 8) {
                Text("Düsseldorfer Tabelle 2025")
                    .font(.headline)
                NavigationLink(destination: DuesseldorferPage()){
                    Image(systemName: "info.circle")
                        .imageScale(.medium)
                }
            }
            HStack {
                Text("Kind 1")
                Slider(value: $kind1, in: 0...18, step: 1)
                Text(kind1 == 0 ? "n.v." : "\(Int(kind1)) Jahre")
            }

            HStack {
                Text("Kind 2")
                Slider(value: $kind2, in: 0...18, step: 1)
                Text(kind2 == 0 ? "n.v." : "\(Int(kind2)) Jahre")
            }

            HStack {
                Text("Kind 3")
                Slider(value: $kind3, in: 0...18, step: 1)
                Text(kind3 == 0 ? "n.v." : "\(Int(kind3)) Jahre")
            }

            Divider()

            HStack {
                Text("Monatliches Einkommen:")
                TextField("0", text: $einkommen)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("€")
            }

            Text("""
                Grundlage der Unterhaltsberechnung ist ein bereinigtes Einkommen, das sogenannte unterhaltsrechtlich relevante Einkommen. Dieses kann sowohl höher als auch niedriger sein als das Nettoeinkommen.
                """)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

//

