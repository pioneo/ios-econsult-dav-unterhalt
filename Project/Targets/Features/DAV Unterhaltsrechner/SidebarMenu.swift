//
//  SidebarMenu.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

struct SidebarMenu: View {
    @Binding var selectedPage: Page
    @Binding var showMenu: Bool

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                selectedPage = .calculator
                withAnimation { showMenu = false }
            }) {
                Label("Rechner", systemImage: "slider.horizontal.3")
                    .padding()
            }

            Button(action: {
                selectedPage = .impressum
                withAnimation { showMenu = false }
            }) {
                Label("Impressum", systemImage: "info.circle")
                    .padding()
            }

            Button(action: {
                selectedPage = .privacy
                withAnimation { showMenu = false }
            }) {
                Label("Datenschutz", systemImage: "lock.document")
                    .padding()
            }
            
            Button(action: {
                selectedPage = .dav
                withAnimation { showMenu = false }
            }) {
                Label("DAV", systemImage: "person.2.circle")
                    .padding()
            }
            
            Button(action: {
                selectedPage = .contact
                withAnimation { showMenu = false }
            }) {
                Label("Kontakt", systemImage: "message.circle")
                    .padding()
            }

            Spacer()
        }
        .padding(.top, 44)
        .frame(maxWidth: 250, alignment: .leading)
        .background(Color(.systemGray5))
        .edgesIgnoringSafeArea(.all)
    }
}

