//
//  ResultPage.swift
//  ios-econsult-dav-unterhalt
//
//  Created by Mattes Warning on 21.05.25.
//

import SwiftUI

struct ResultPage: View {
    
    let kind1: Int
    let kind2: Int
    let kind3: Int
    
    let einkommen: Int
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 8) {
                
                HStack {Text("Unterhalt Kind 1")
                    Spacer()
                    Text("\(kind1) €")
                }
                
                HStack {Text("Unterhalt Kind 2")
                    Spacer()
                    Text("\(kind2) €")
                }
                HStack {Text("Unterhalt Kind 3")
                    Spacer()
                    Text("\(kind3) €")
                }
                
                Divider()
                
                HStack {
                    Text("Summe")
                        .fontWeight(.bold)
                    Spacer()
                    Text("427.00 €")
                        .fontWeight(.bold)
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Differenz")
                            .fontWeight(.bold)
                        Text("(Einkommen abzügl. Summe)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Text("2379.00 €")
                        .fontWeight(.bold)
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Selbstbehalt")
                            .font(.headline)
                        Spacer()
                        Text("1450.00 €")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    
                    Text("""
                    Der Selbstbehalt ist der Betrag, der dem Unterhaltsschuldner mindestens monatlich verbleiben muss, wenn er Unterhalt zu zahlen hat. Beim Kindesunterhalt sind zwei Selbstbehalte von Bedeutung: Einmal der notwendige Selbstbehalt, der gegenüber minderjährigen unverheirateten und ihnen gleichgestellten volljährigen Kindern (privilegierten Kindern) gilt. Dieser beläuft sich nach den meisten Leitlinien der Oberlandesgerichte beim nicht erwerbstätigen Unterhaltspflichtigen derzeit auf monatlich 1.200 € und beim erwerbstätigen Unterhaltspflichtigen auf monatlich 1.450 €.
                    """)
                    .font(.footnote)
                    .foregroundColor(.gray)
                }
                
                Divider()

                HStack {
                    Text("Anspruch")
                        .font(.headline)
                    Spacer()
                    Text("427.00 €")
                        .font(.headline)
                        .fontWeight(.bold)
                }
                
                Divider()
                    .onAppear {
                        // Calculation?
                    }
                
                
            }
        }
        .frame(alignment: .leading)
        .padding()
        
        .navigationTitle("Deutscher Anwaltverein (DAV)")
        .navigationBarTitleDisplayMode(.inline)
        
        FooterView()
    }
}
