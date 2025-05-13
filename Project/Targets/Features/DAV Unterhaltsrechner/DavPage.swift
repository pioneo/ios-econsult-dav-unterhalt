//
//  DavPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct DavPage: View {
    
    let davText = """
    Der Deutsche Anwaltverein (DAV) ist der Interessenvertreter der Deutschen Anwaltschaft. Darüber hinaus bietet er den Mitgliedern der örtlichen Anwaltvereine Fortbildung, Information, Kommunikation und Service. Zweck des DAV ist nach seiner Satzung die Wahrung, Pflege und Förderung aller beruflichen und wirtschaftlichen Interessen der Anwaltschaft einschließlich des Anwaltsnotariats. Der Deutsche Anwaltverein ist seit 1871 die Interessenvertretung der Deutschen Anwaltschaft. Er repräsentiert die frei verbundene Anwaltschaft. Ihm gehören 247 Anwaltvereine in ganz Deutschland an und je einer in Frankreich, Großbritannien, Italien, Griechenland und Portugal. Über die örtlichen Anwaltvereine sind über 67.000 Rechtsanwältinnen und Rechtsanwälte dem DAV angeschlossen. Der DAV schöpft seine Kraft aus der Freiwilligkeit des Zusammenschlusses und dem Engagement der örtlichen Anwaltvereine und maßgeblich auch aus seinen Arbeitsgemeinschaften. Wir setzen uns für die berufspolitischen und wirtschaftlichen Interessen der Deutschen Anwaltschaft ein. Als bundesdeutsche Solidargemeinschaft der Anwaltschaft leistet der DAV berufs- und rechtspolitische Arbeit. Über seine 31 Gesetzgebungsausschüsse, die in allen Rechtsgebieten arbeiten, nimmt der DAV Stellung zu nationalen Gesetzentwürfen und Richtlinienentwürfen der Europäischen Union. Diese beeinflussen die parlamentarische Willensbildung in Deutschland und Europa. Sie bringen rechtsstaatliche Maßstäbe und anwaltliches Know-how in die Gesetzgebung ein und machen Gesetze praktikabel. Rechtsanwältinnen und Rechtsanwälte benötigen Kommunikation, Kooperation, Fortbildung, Spezialisierung und neue Denkanstöße. Ein Forum hierfür stellen die unter dem Dach des DAV bestehenden 29 Arbeitsgemeinschaften. Diese vermitteln in zahlreichen Veranstaltungen nicht nur Spezialwissen zu bestimmten Rechtsgebieten, sondern bieten auch interessante Möglichkeiten des wechselseitigen Austauschs zwischen den im betreffenden Rechtsgebiet tätigen Kolleginnen und Kollegen. Das Leistungsspektrum ist sehr breit und reicht von Fachveranstaltungen, Kurzlehrgängen, Mitteilungsblättern, elektronischen Newslettern bis hin zur eigenen Pressearbeit.
    """
    
    var body: some View {
        ScrollView {
            Text(davText)
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
        
        .navigationTitle("Deutscher Anwaltverein (DAV)")
        .navigationBarTitleDisplayMode(.inline)
        
        
        FooterView()
    }
}

