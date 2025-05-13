//
//  ContactPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct ContactPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Deutscher Anwaltverein (DAV) e.V.").font(.headline)
                    Text("Littenstraße 11")
                    Text("D-10179 Berlin")
                    Text("Tel.: +49 (03) 72 61 52 - 0")
                    Text("Fax.: +49 (03) 72 61 52 - 1 90")
                    Text("E-Mail: dav@anwaltverein.de")
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("Deutscher Anwaltverein, Büro Brüssel").font(.headline)
                    Text("Rue Josep II 40, Boîte 7B")
                    Text("1000 Brüssel - Brussels")
                    Text("Tel.: +32 (2) 280 28 - 12")
                    Text("Fax.: +32 (2) 280 28 - 13")
                    Text("E-Mail: bruessel@eu.anwaltverein.de")
                }

                
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .padding()
        }
        .overlay(
            VStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                Spacer()
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
            }
        )
        .edgesIgnoringSafeArea(.all)
        .frame(alignment: .leading)
        .padding()
        
        FooterView()
        .navigationTitle("Kontakt")
        .navigationBarTitleDisplayMode(.inline)
    }
}
