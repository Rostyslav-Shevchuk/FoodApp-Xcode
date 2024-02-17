//
//  BabyView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct settingsView: View {
    @State private var changeTheme: Bool = false
    @Environment(\.colorScheme) private var scheme
    @AppStorage("user_theme") private var userTheme: Theme = .sustemDefault
    var body: some View {
        NavigationStack {
            List {
                Section("Appearance") {
                    Button("Change Theme") {
                        changeTheme.toggle()
                    }
                }
            }
            .navigationTitle ("Settings")
        }
        .preferredColorScheme(userTheme.colorSheme)
        .sheet(isPresented: $changeTheme, content: {
            ThemeChange(scheme: scheme)
                .presentationDetents ([.height(410)])
                .presentationBackground(.clear)
        })
    }
}
               
#Preview {
    settingsView()
}
