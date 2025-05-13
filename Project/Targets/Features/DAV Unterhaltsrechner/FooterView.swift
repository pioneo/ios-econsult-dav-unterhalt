//
//  FooterView.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Image(systemName: "waveform.path.ecg") // Placeholder logo
                .font(.largeTitle)
                .foregroundColor(.red)
            Text("DeutscherAnwaltVerein")
                .font(.footnote)
                .bold()
        }
        .padding(.top)
    }
}
