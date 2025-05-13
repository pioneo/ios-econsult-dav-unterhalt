//
//  RechnerPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct RechnerPage: View {
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
