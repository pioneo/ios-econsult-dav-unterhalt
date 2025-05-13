//
//  CalculatorPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct CalculatorPage: View {
    var body: some View {
        VStack {
            HeaderView()
            UnterhaltsForm()
            BerechnungButton()
            FooterView()
        }
        .padding()
    }
}
