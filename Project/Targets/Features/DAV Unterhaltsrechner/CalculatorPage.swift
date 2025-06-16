//
//  CalculatorPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct CalculatorPage: View {
    @State private var kind1: Double = 0
    @State private var kind2: Double = 0
    @State private var kind3: Double = 0
    @State private var einkommen: Double = 0

    @State private var showResult = false
    @State private var showAlert = false
    
    // Fokuszustand hinzufügen
        @FocusState private var isInputFocused: Bool
    
    var body: some View {
        VStack {
            HeaderView()
            UnterhaltsForm(
                kind1: $kind1,
                kind2: $kind2,
                kind3: $kind3,
                einkommen: $einkommen
            )
            .focused($isInputFocused) // Fokus an Unterformular binden
            .frame(maxHeight: .infinity)
            BerechnungButton(action: {
                if einkommen == 0 {
                    showAlert = true
                    return
                }
                showResult = true
            })
            FooterView()
        }
        .edgesIgnoringSafeArea(.all)
        .frame(alignment: .leading)
        .padding()
        // Tastatur ausblenden bei Tippen außerhalb
        .onTapGesture {
            isInputFocused = false
        }
        .sheet(isPresented: $showResult) {
            ResultPage(age1: Int(kind1), age2: Int(kind2), age3: Int(kind3), income: Int(einkommen))
        }
        .alert("Missing Income", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please input an income larger than 0€ to continue.")
        }
    }
}
