//
//  ImpressumPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct ImpressumPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hinweis nach §5 TMG & Haftungsausschluss").font(.headline)
                    Text("Die nachstehenden Informationen enthalten die gesetzlich vorgesehenen Pflichtangaben zur Anbieterkennzeichnung auf der Internet-Präsenz des Deutschen Anwaltvereins (DAV) e.V. Die in dieser App errechneten Wertedienen lediglich zur Orientierung und bilden keine Rechtsgrundlage.")
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("Anbieter").font(.headline)
                    Text("Deutscher Anwaltverein (DAV) e.V.")
                    Text("Littenstraße 11")
                    Text("D-10179 Berlin")
                    Text("Tel.: +49 (03) 72 61 52 - 0")
                    Text("Fax.: +49 (03) 72 61 52 - 1 90")
                    Text("E-Mail: dav@anwaltverein.de")
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Vereinsregister").font(.headline)
                    Text("Der Deutsche Anwaltverein e.V. wird vertreten durch seine Präsidentin: Rechtsanwältin und Notarin Edith Kindermann (kindermann@anwaltverein.de) (gemäß § 20 der Satzung des Deutschen Anwaltvereins). Der Deutsche Anwaltverein e.V. ist eingetragen im Vereinsregister beim Amtsgericht Charlottenburg unter 21116, USt-Ident-Nr. DE214851410.")
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
        .navigationTitle("Impressum")
        .navigationBarTitleDisplayMode(.inline)
    }
}


