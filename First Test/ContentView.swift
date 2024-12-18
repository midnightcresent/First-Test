//
//  ContentView.swift
//  First Test
//
//  Created by Aditya on 18/12/24.
//

import SwiftUI

struct ContentView: View {
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
                        Spacer()
                        ZStack {
                            Color.white
                            Image(.icNotification)
                        }
                        .frame(width: 32, height: 32)
                        .clipShape(Circle())
                        Spacer().frame(width: 15)
                    }
                }
                .frame(width: proxy.size.width, height: 74)
                
                TabView {
                    
                    Tab("Home", image: "ic-home") {
                        HomeScreen()
                    }
                    
                    Tab("Activity Trail", image: "ic-activity") {
                        ActivityTrailScreen()
                    }
                    
                    Tab("Profile", image: "ic-assistance") {
                        ProfileScreen()
                    }
                }
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
            .padding(0)
        }
    }
}

#Preview {
    ContentView()
}
