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
            Image("logo") // Assets
                .resizable()
                .scaledToFit()
                .frame(height: 40)
        }
        .padding(.top)
    }
}
