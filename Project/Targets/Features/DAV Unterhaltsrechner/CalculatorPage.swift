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
    
    var body: some View {
        VStack {
            HeaderView()
            UnterhaltsForm(
                kind1: $kind1,
                kind2: $kind2,
                kind3: $kind3,
                einkommen: $einkommen
            )
            .frame(maxHeight: .infinity)
            BerechnungButton(action: {
                showResult = true
            })
            FooterView()
        }
        .edgesIgnoringSafeArea(.all)
        .frame(alignment: .leading)
        .padding()
        .sheet(isPresented: $showResult) {
            ResultPage(kind1: Int(kind1), kind2: Int(kind2), kind3: Int(kind3), einkommen: Int(einkommen))
        }
    }
}
