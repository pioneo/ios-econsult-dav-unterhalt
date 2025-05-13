//
//  ContentView.swift
//  DAV Unterhaltsrechner
//
//  Created by Mattes Warning on 06.05.25.
//

import SwiftUI

enum Page {
    case calculator
    case impressum
    case privacy
    case dav
    case contact
}


struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedPage: Page = .calculator

    let menuWidth: CGFloat = 150

    var body: some View {
        ZStack(alignment: .leading) {
            // Sidebar menu
            SidebarMenu(selectedPage: $selectedPage, showMenu: $showMenu)
                .frame(width: menuWidth)
                .offset(x: showMenu ? 0 : -menuWidth)
                .animation(.easeInOut, value: showMenu)
                .zIndex(1)

            // Main content, shifted when menu is open
            NavigationView {
                Group {
                    switch selectedPage {
                    case .calculator:
                        CalculatorPage()
                    case .impressum:
                        ImpressumPage()
                    case .privacy:
                        PrivacyPage()
                    case .dav:
                        DavPage()
                    case .contact:
                        ContactPage()
                    }
                }
                .navigationBarTitle("Unterhaltsrechner", displayMode: .inline)
                .navigationBarItems(leading: Button(action: {
                    withAnimation {
                        showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                })
            }
            .offset(x: showMenu ? menuWidth : 0) // <-- Shift content
            .animation(.easeInOut, value: showMenu)
            .zIndex(0)
        }
    }
}


#Preview {
    ContentView()
}


