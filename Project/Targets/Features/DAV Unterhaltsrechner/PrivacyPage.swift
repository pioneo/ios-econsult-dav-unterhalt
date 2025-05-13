//
//  PrivacyPage.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct PrivacyPage: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("§ 1 Information über die Erhebung personenbezogener Daten").font(.headline)
                    Text("(1) Wir stellen Ihnen neben unserem Online-Angebot eine mobile App zur Verfügung, die Sie auf Ihr mobiles Endgerät herunterladen können. Im Folgenden informieren wir über die Erhebung personenbezogener Daten bei Nutzung unserer mobilen App. Personenbezogene Daten sind alle Daten, die auf Sie persönlich beziehbar sind, z. B. Name, Adresse, E-Mail-Adressen, Nutzerverhalten.")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("(2) Verantwortlicher gem. Art. 4 Abs. 7 EU-Datenschutz-Grundverordnung (DS-GVO) ist")
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Deutscher Anwaltverein (DAV) e.V.")
                    Text("Littenstraße 11")
                    Text("D-10179 Berlin")
                    Text("Tel.: +49 (03) 72 61 52 - 0")
                    Text("Fax.: +49 (03) 72 61 52 - 1 90")
                    Text("E-Mail: dav@anwaltverein.de")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Vereinsregister")
                    Text("Der Deutsche Anwalt­verein e.V. ist im Vereinsregister des Amtsgerichts Charlottenburg unter der Register­nummer VR 21116 eingetragen.")
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Vertretungsberechtigter")
                    Text("Der Deutsche Anwaltverein wird vertreten durch seine Präsidentin:")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Rechtsanwältin und Notarin Edith Kindermann (kindermann@anwaltverein.de) (gemäß § 20 der Satzung des Deutschen Anwaltvereins)")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("(gemäß § 20 der Satzung des Deutschen Anwaltvereins) Gemäß § 55 RStV. V. i. s. d. P.: Swen Walentowski, Littenstraße 11, 10179 Berlin")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("(siehe unser Impressum)")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Unseren betrieblichen Datenschutzbeauftragten erreichen Sie wie folgt:")
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("Nicole Narewski")
                    Text("Littenstraße 11")
                    Text("10179 Berlin")
                    Text("Tel.: +49 (03) 72 61 52 - 1 28")
                    Text("E-Mail: narewski@anwaltverein.de")
                }
            VStack(alignment: .leading, spacing: 4) {
                Text("(3) Bei Ihrer Kontaktaufnahme mit uns per E-Mail oder über ein Kontaktformular wird Ihre E-Mail-Adresse und, falls Sie von Ihnen angegeben werden, Ihr Name und Ihre Telefonnummer von uns gespeichert, um Ihre Fragen zu beantworten. Die in diesem Zusammenhang anfallenden Daten löschen wir, nachdem die Speicherung nicht mehr erforderlich ist, oder – im Falle von gesetzlichen Aufbewahrungspflichten – schränken die Verarbeitung ein.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(4) Falls wir für einzelne Funktionen unseres Angebots auf beauftragte Dienstleister zurückgreifen oder Ihre Daten für werbliche Zwecke nutzen möchten, werden wir Sie untenstehend im Detail über die jeweiligen Vorgänge informieren. Dabei nennen wir auch die festgelegten Kriterien der Speicherdauer.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("§ 2 Ihre Rechte").font(.headline)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(1) Sie haben gegenüber uns folgende Rechte hinsichtlich der Sie betreffenden personenbezogenen Daten:")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("- Recht auf Auskunft,")
                Text("- Recht auf Berichtigung oder Löschung,")
                Text("- Recht auf Einschränkung der Verarbeitung,")
                Text("- Recht auf Widerspruch gegen die Verarbeitung,")
                Text("- Recht auf Datenübertragbarkeit.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(2) Sie haben zudem das Recht, sich bei einer Datenschutz-Aufsichtsbehörde über die Verarbeitung Ihrer personenbezogenen Daten in unserem Unternehmen zu beschweren.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("§ 3 Erhebung personenbezogener Daten bei Nutzung unserer mobilen App").font(.headline)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(1) Bei Herunterladen der mobilen App werden die erforderlichen Informationen an den App Store übertragen, also insbesondere Nutzername, E-Mail-Adresse und Kundennummer Ihres Accounts, Zeitpunkt des Downloads, Zahlungsinformationen und die individuelle Gerätekennziffer. Auf diese Datenerhebung haben wir keinen Einfluss und sind nicht dafür verantwortlich. Wir verarbeiten die Daten nur, soweit es für das Herunterladen der mobilen App auf Ihr mobiles Endgerät notwendig ist.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(2) Bei Nutzung der mobilen App erheben wir die nachfolgend beschriebenen personenbezogenen Daten, um die komfortable Nutzung der Funktionen zu ermöglichen. Wenn Sie unsere mobile App nutzen möchten, erheben wir die folgenden Daten, die für uns technisch erforderlich sind, um Ihnen die Funktionen unserer mobilen App anzubieten und die Stabilität und Sicherheit zu gewährleisten (Rechtsgrundlage ist Art. 6 Abs. 1 S. 1 lit. f DS-GVO):")
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("- IP-Adresse")
                Text("- Datum und Uhrzeit der Anfrage")
                Text("- Zeitonendifferenz und Greenwitch Mean Time (GMT)")
                Text("- Inhalt der Anforderung (konkrete Seite)")
                Text("- Zugriffsstatus/HTTP-Statuscode")
                Text("- jeweils übertragene Datenmange")
                Text("- Webseite, von der die Anforderung kommt")
                Text("- Browser")
                Text("- Betriebssystem und dessen Oberfläche")
                Text("- Sprache und Version der Browsersoftware")
                Text("- Standortdaten für die Anwaltssuche")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(3) Weiterhin benötigen wir [Ihre Gerätekennzeichnung, eindeutige Nummer des Endgerätes (IMEI = International Mobile Equipment Identity), eindeutige Nummer des Netzteilnehmers (IMSI = International Mobile Subscriber Identity), Mobilfunknummer (MSISDN), MAC-Adresse für WLAN-Nutzung, Name Ihres mobilen Endgerätes, E-Mail-Adresse].")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("(4) Zusätzlich zu den zuvor genannten Daten werden bei Ihrer Nutzung unserer mobilen App Cookies auf Ihrem Rechner gespeichert. Bei Cookies handelt es sich um kleine Textdateien, die im Gerätespeicher Ihres mobilen Endgerätes abgelegt und der von Ihnen verwendeten mobilen App zugeordnet gespeichert werden. Durch Cookies können der Stelle, die den Cookie setzt (hier: uns), bestimmte Informationen zufließen. Cookies können keine Programme ausführen oder Viren auf Ihr mobiles Endgerät übertragen. Sie dienen dazu, mobile Apps insgesamt nutzerfreundlicher und effektiver zu machen.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("a) Diese mobile App nutzt folgende Arten von Cookies, deren Umfang und Funktionsweise im Folgenden erläutert werden:")
                Text("– Transiete Cookies (dazu b)")
                Text("– Persistente Cookies (dazu c)")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("b) Transiente Cookies werden automatisiert gelöscht, wenn Sie unsere mobile App schließen. Dazu zählen insbesondere die Session-Cookies. Diese speichern eine sogenannte Session-ID, mit welcher sich verschiedene Anfragen Ihrer mobilen App zuordnen lassen. Dadurch kann Ihr mobiles Endgerät wiedererkannt werden, wenn Sie unsere mobile App erneut nutzen. Die Session-Cookies werden gelöscht, wenn Sie sich ausloggen oder die App schließen.")
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("c) Persistente Cookies werden automatisiert nach einer vorgegebenen Dauer gelöscht, die sich je nach Cookie unterscheiden kann. Sie können die Einstellungen Ihres mobilen Betriebssystems und der App nach Ihren Wünschen konfigurieren und z. B. die Annahme von Third-Party-Cookies oder allen Cookies ablehnen. Wir weisen Sie darauf hin, dass Sie eventuell nicht alle Funktionen unserer mobilen App nutzen können.")
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
            .navigationTitle("Datenschutz")
            .navigationBarTitleDisplayMode(.inline)
    }
    
}
