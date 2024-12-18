//
//  HomeScreen.swift
//  First Test
//
//  Created by Aditya on 18/12/24.
//

import SwiftUI

struct HomeScreen: View {
    let items = ["Apple", "Banana", "Cherry"]
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 20)
            HStack(spacing: 5) {
                Text("Welcome,")
                    .foregroundStyle(.black)
                    .font(.custom("WorkSans-Regular", size: 16))
                Text("Kunal Rao")
                    .foregroundStyle(.black)
                    .font(.custom("WorkSans-SemiBold", size: 16))
                Spacer()
            }
            .padding(.horizontal, 20)
            Spacer().frame(height: 16)
            List {
                ForEach(items, id: \.self) { item in
                    CustomCard
                        .cornerRadius(4)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .listRowBackground(Color("GodrejBlueLight"))
                        .listRowSeparator(.hidden)
                }
            }
            .scrollContentBackground(.hidden)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("GodrejBlueLight"))
    }
    
    var CustomCard: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                Image(.imgHotelRoom)
                    .resizable()
                    .frame(height: 200)
                    .clipped()
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.0, green: 0.06, blue: 0.14, opacity: 0),
                        Color(red: 0.0, green: 0.06, blue: 0.14)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            ZStack {
                                Color.white
                                    .cornerRadius(4)
                                HStack(spacing: 4) {
                                    Image(.icLockPro)
                                        .renderingMode(.template)
                                        .foregroundStyle(Color("GodrejRed"))
                                    Text("LOCKED STATE")
                                        .foregroundStyle(Color("GodrejRed"))
                                        .font(.custom("WorkSans-SemiBold", size: 10))
                                        .font(.subheadline)
                                }
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                            }
                            .fixedSize(horizontal: true, vertical: true)
                        }
                        Spacer()
                    }
                    .padding(.leading, 17.02)
                    .padding(.top, 16)
                    Spacer()
                    HStack(alignment: .bottom) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Flat Entrance")
                                .foregroundStyle(.white)
                                .font(.custom("WorkSans-SemiBold", size: 21))
                            Text("Main door • Godrej 9-in-1")
                                .foregroundStyle(.white)
                                .font(.custom("WorkSans-SemiBold", size: 12))
                        }
                        .padding(.leading, 17.02)
                        .padding(.bottom, 16)
                        Spacer()
                    }
                }
            }
            .frame(height: 200)
            Spacer().frame(height: 16)
            HStack(spacing: 8.51) {
                ZStack {
                    Color("GodrejBlueLight")
                    VStack {
                        Text("Door")
                            .font(.custom("WorkSans-Regular", size: 10))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                        Image(.icDoor)
                        Text("Closed")
                            .font(.custom("WorkSans-Regular", size: 12))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                    }
                }
                .frame(height: 90)
                .frame(minWidth: 94.65)
                .cornerRadius(4)
                ZStack {
                    Color("GodrejBlueLight")
                    VStack {
                        Text("Battery")
                            .font(.custom("WorkSans-Regular", size: 10))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                        Image(.icBatteryCritical)
                        Text("Critical")
                            .font(.custom("WorkSans-Regular", size: 12))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                    }
                }
                .frame(height: 90)
                .frame(minWidth: 94.65)
                .cornerRadius(4)
                ZStack {
                    Color("GodrejBlueLight")
                    VStack {
                        Text("Status")
                            .font(.custom("WorkSans-Regular", size: 10))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                        Image(.icNetworkGood)
                        Text("Online")
                            .font(.custom("WorkSans-Regular", size: 12))
                            .foregroundStyle(Color("GodrejGreyStrong"))
                    }
                }
                .frame(height: 90)
                .frame(minWidth: 94.65)
                .cornerRadius(4)
            }
            .padding(.horizontal, 17.02)
            Spacer().frame(height: 12)
            ZStack(alignment: .center) {
                Color("GodrejBlueLight")
                HStack {
                    Image(.icLockPro)
                        .renderingMode(.template)
                        .foregroundStyle(.red)
                    Text("LOCKED")
                        .font(.custom("WorkSans-SemiBold", size: 10))
                        .foregroundStyle(Color("GodrejRed"))
                    Text("today at 04:00 PM")
                        .font(.custom("WorkSans-Regular", size: 10))
                        .foregroundStyle(Color("GodrejGreyStrong"))
                }
            }
            .cornerRadius(4)
            .frame(maxWidth: .infinity, minHeight: 32)
            .padding(.horizontal, 17.02)
            Spacer().frame(height: 12)
            Button(action: {}) {
                ZStack(alignment: .center) {
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color(red: 75/255, green: 182/255, blue: 232/255), // #4BB6E8
                            Color(red: 77/255, green: 152/255, blue: 255/255)  // #4D98FF
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .cornerRadius(4)
                    
                    HStack {
                        Image(.icUnlock)
                            .foregroundStyle(.white)
                        Text("Unlock")
                            .foregroundStyle(.white)
                            .font(.custom("WorkSans-SemiBold", size: 14))
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 48)
            .cornerRadius(4)
            .padding(.horizontal, 15)
            Spacer().frame(height: 16)
        }
        .background(.white)
    }
}

#Preview {
    HomeScreen()
}
