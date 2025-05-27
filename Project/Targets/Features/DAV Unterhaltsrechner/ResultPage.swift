//
//  ResultPage.swift
//  ios-econsult-dav-unterhalt
//
//  Created by Mattes Warning on 21.05.25.
//

import SwiftUI

struct ResultPage: View {
    let age1: Int
    let age2: Int
    let age3: Int
    let income: Int

    @State private var unterhaltValues: [[[Double]]] = []
    @State private var selbstbehalt: Double = 1450

    @State private var kind1: Double = 0
    @State private var kind2: Double = 0
    @State private var kind3: Double = 0

    private func getIncomeIndex(_ income: Int) -> Int {
        switch income {
        case ...2100: return 0
        case ...2500: return 1
        case ...2900: return 2
        case ...3300: return 3
        case ...3700: return 4
        case ...4100: return 5
        case ...4500: return 6
        case ...4900: return 7
        case ...5300: return 8
        case ...5700: return 9
        case ...6400: return 10
        case ...7200: return 11
        case ...8200: return 12
        case ...9700: return 13
        default: return 14
        }
    }

    private func getAgeIndex(_ age: Int) -> Int {
        switch age {
        case 0...5: return 0
        case 6...11: return 1
        default: return 2
        }
    }

    private func calculateUnterhalt(age: Int, isThirdChild: Bool) -> Double {
        guard age > 0, !unterhaltValues.isEmpty else { return 0 }
        let incomeIndex = getIncomeIndex(income)
        let ageIndex = getAgeIndex(age)
        let childIndex = isThirdChild ? 1 : 0
        return unterhaltValues[childIndex][incomeIndex][ageIndex]
    }

    private func loadJson() {
        if let url = Bundle.main.url(forResource: "unterhalt_values", withExtension: "json"),
           let data = try? Data(contentsOf: url),
           let json = try? JSONDecoder().decode([[[Double]]].self, from: data) {
            unterhaltValues = json

            kind1 = calculateUnterhalt(age: age1, isThirdChild: false)
            kind2 = calculateUnterhalt(age: age2, isThirdChild: false)
            kind3 = calculateUnterhalt(age: age3, isThirdChild: true)
        }
    }

    var totalSupport: Double { kind1 + kind2 + kind3 }
    var difference: Double { Double(income) - totalSupport }
    var anspruch: Double {
        let available = Double(income) - selbstbehalt
        return difference < selbstbehalt ? max(0, available) : totalSupport
    }
    
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
        .onAppear {
            loadJson()
        }
        
        FooterView()
    }
}
