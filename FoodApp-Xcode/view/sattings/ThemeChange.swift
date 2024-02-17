//
//  ThemeChange.swift
//  FoodApp
//
//  Created by Ростислав on 17.02.2024.
//

import SwiftUI

struct ThemeChange: View {
    var scheme : ColorScheme
    @AppStorage("user_theme") private var userTheme: Theme = .sustemDefault
    
    @Namespace private var animation
    var body: some View {
        VStack (spacing: 15) {
            VStack(spacing: 15) {
                
                Circle()
                    .fill(userTheme.color(scheme).gradient)
                    .frame (width: 150, height: 150)
                
                Text ("Choose a Style")
                    .font(.title2.bold())
                    .padding (.top, 25)
                
                Text ("Pop or subtle, Day or night. InCustomize your interface.")
                    .multilineTextAlignment(.center)
                
                /// Custom Segmented Picker
                HStack(spacing: 0) {
                    ForEach (Theme.allCases, id: \.rawValue) { theme in
                        Text(theme.rawValue)
                            .padding(.vertical, 10)
                            .frame(width: 100)
                            .background {
                                ZStack {
                                    if userTheme == theme {
                                        Capsule()
                                            .fill(.themeBG)
                                            .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                                        
                                    }
                                }
                                .animation(.snappy, value: userTheme)
                            }
                            .contentShape(.rect)
                            .onTapGesture {
                                userTheme = theme
                            }
                    }
                }
                .padding(3)
                .background(.primary.opacity(0.06), in: .capsule)
                .padding(.top, 20)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .frame(height: 410)
        .clipShape(.rect(cornerRadius: 30))
        .environment(\.colorScheme, scheme)
        
    }
}

struct ThemeChange_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}

// Theme

enum Theme: String, CaseIterable {
    case sustemDefault = "Deufault"
    case light = "Light"
    case dark = "Dark"
    
    func color(_ scheme: ColorScheme) -> Color {
        switch self {
        case .sustemDefault:
            return scheme == .dark ? .moon : .sun
        case .light:
            return .sun
        case .dark:
            return .moon
        }
    }
    
    var colorSheme: ColorScheme? {
        switch self {
        case .sustemDefault:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
}

