//
//  DuesseldorferPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 13.05.25.
//

import SwiftUI

struct DuesseldorferPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Die Berechnung erfolgt unter der Annahme, dass der erwerbstätige Unterhaltsverpflichtete nur den Kindern gegenüber zum Unterhalt verpflichtet ist. Darüber hinaus wird zur Ermittlung des Bedarfs nur das Einkommen des Unterhaltsverpflichteten berücksichtigt.")
                         
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Beispiel: Der unterhaltsverpflichtete Ehemann ist seinen beiden Kindern, aber nicht seiner Ehefrau zum Unterhalt verpflichtet. Die Ehefrau ist erneut verheiratet und verfügt über kein eigenes Einkommen. Die Kinder leben bei der Ehefrau.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Im Beispiel leistet die Ehefrau den sog. Naturalunterhalt in Form von Betreuung und Versorgung. Der Ehemann hat den Barunterhalt in Form von monatlichen Geldzahlungen zu leisten. Für diese Fälle bietet Ihnen die App eine erste Orientierungshilfe zur Berechnung des Unterhaltsanspruchs der Kinder. Die Berechnung erfolgt dabei auf der Grundlage der Düsseldorfer Tabelle. An dieser Tabelle orientieren sich die Gerichte im Rahmen der Unterhaltsberechnung. Jede Unterhaltsberechnung kann von vielen Faktoren beeinflusst werden, so dass die Berechnung in dieser App eine konkrete Beratung nicht ersetzen kann.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Erläuterungen").font(.headline)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("1 .Einkommen").font(.headline)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Zur Bestimmung des Einkommens sind sämtliche Einkünfte heranzuziehen (Einkünfte aus Land- und Forstwirtschaft, Gewerbebetrieb, selbstständiger Tätigkeit, nicht selbstständiger Tätigkeit, Kapital, Vermietung/Verpachtung und sonstige Einkünfte nach § 22 EStG).")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Im Rahmen der Einkünfte aus nicht selbstständiger Tätigkeit sind in der Regel alle Leistungen anzusetzen, also auch Urlaubs- und Weihnachtsgeld, Zulagen, Prämien, Überstundenvergütungen im Rahmen des Üblichen. Darüber hinaus rechnen als Einkommen auch sonstige vermögenswerte Vorteile (z.B. Wohnen in der eigenen Immobilie oder Nutzung eines Firmen-Pkws), sozialstaatliche Zuwendungen (z.B. Krankengeld, Arbeitslosengeld), BAföG und Versorgungsleistungen für Dritte.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Das unterhaltsrechtlich relevante Einkommen des selbstständig Erwerbstätigen drückt sich in dem erzielten Gewinn aus, der im Rahmen der Bilanz nebst Gewinn- und Verlustrechnung oder Einnahmen-/Überschussrechnung ermittelt wird, wobei oft unterhaltsrechtliche Korrekturen vorgenommen werden müssen. Der Gewinn entspricht dem Bruttoverdienst des abhängig Erwerbstätigen. Das Nettoeinkommen ergibt sich nach Abzug von Steuern in tatsächlich entstandener Höhe und Vorsorgeaufwendungen in angemessenem Umfang.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("2. Schulden").font(.headline)
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Während der Ehezeit (so genannte ehebedingte oder eheprägende) entstandene Schulden sind in der Regel auch beim Kindesunterhalt zu berücksichtigen. Allerdings gilt dies nur eingeschränkt, wenn minderjährige Kinder auf der Seite der Unterhaltsberechtigten stehen. Dann soll auch beim Vorhandensein von erheblichen Schulden auf Seiten des Unterhaltspflichtigen den minderjährigen Kindern zumindest der Regelbetrag nach der Regelbetragsverordnung (entspricht der ersten Zeile der Düsseldorfer Tabelle) verbleiben.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("3. Selbstbehalt").font(.headline)
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Der Selbstbehalt ist der Betrag, der dem Unterhaltsschuldner mindestens monatlich verbleiben muss, wenn er Unterhalt zu zahlen hat. Beim Kindesunterhalt sind zwei Selbstbehalte von Bedeutung: Einmal der notwendige Selbstbehalt, der gegenüber minderjährigen unverheirateten und ihnen gleichgestellten volljährigen Kindern (privilegierten Kindern) gilt. Dieser beläuft sich nach den meisten Leitlinien der Oberlandesgerichte beim nicht erwerbstätigen Unterhaltspflichtigen derzeit auf monatlich 1.200,00 € und beim erwerbstätigen Unterhaltspflichtigen auf monatlich 1.450,00 €.")
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
        .navigationTitle("Unterhalt")
        .navigationBarTitleDisplayMode(.inline)
    }
}
