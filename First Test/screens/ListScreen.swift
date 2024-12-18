//
//  ListScreen.swift
//  First Test
//
//  Created by Aditya on 18/12/24.
//

import SwiftUI

struct ListScreen: View {
    
    struct ListItem: Identifiable {
        let id = UUID()
        let name: String
        let iconName: String
    }
    
    let items = [
        ListItem(name: "Lock Details", iconName: "ic-write"),
        ListItem(name: "My Access", iconName: "ic-security"),
        ListItem(name: "Passage Mode", iconName: "ic-passage-mode"),
        ListItem(name: "FAQs", iconName: "ic-faq"),
        ListItem(name: "Manual", iconName: "ic-manual"),
        ListItem(name: "Factory Reset", iconName: "ic-room-pref"),
        ListItem(name: "About Lock", iconName: "ic-info")
    ]
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                ZStack {
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 75/255, green: 182/255, blue: 232/255), // #4BB6E8
                            Color(red: 77/255, green: 152/255, blue: 255/255)  // #4D98FF
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .edgesIgnoringSafeArea(.top)
                    HStack {
                        Text("Lock Settings")
                            .foregroundColor(Color("GodrejBlueLight"))
                            .font(.custom("WorkSans-SemiBold", size: 16))
                    }
                }
                .frame(width: proxy.size.width, height: 74)
                
                ScrollView {
                    ForEach(items) { item in
                        ItemComponent(title: item.name, iconName: item.iconName)
                    }
                }
                .padding(20)
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
    }
    
    func ItemComponent(title: String, iconName: String) -> some View {
        HStack {
            HStack(spacing: 0) {
                ZStack {
                    Circle()
                        .foregroundColor(Color("GodrejBlueLight"))
                    Image(iconName)
                        .foregroundColor(Color(hex: "#4D98FF"))
                        .frame(width: 18, height: 18)
                }
                .frame(width: 40, height: 40)
                Spacer().frame(width: 16)
                Text(title)
                    .font(.custom("WorkSans-Regular", size: 14))
                    .frame(height: 16)
            }
            Spacer()
            Image(.icForwardArrow)
                .foregroundStyle(Color(hex: "#1F2228"))
                .frame(width: 24, height: 24)
        }
        .frame(minHeight: 40)
        .padding(.vertical, 16)
    }
}

#Preview {
    ListScreen()
}

extension Color {
    init(hex: String) {
        let hexSanitized = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hexSanitized)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let red = Double((rgb & 0xFF0000) >> 16) / 255.0
        let green = Double((rgb & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}
