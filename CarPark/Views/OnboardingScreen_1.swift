//
//  OnboardingScreen_1.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import SwiftUI

struct OnboardingScreen_1: View {
    var body: some View {
        NavigationView {
            Color.black
                .ignoresSafeArea()
                .overlay {
                    VStack{
                        HStack{
                            Image("street")
                            Image("mobil")
                            Image("street")
                        }.padding(.bottom)
                        
                        HStack {
                            Image(systemName: "car.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundStyle(Color.green)
                                .padding(.horizontal, 10)
                            Text("Car Parking")
                                .font(.body)
                                .foregroundStyle(Color.white)
                                .fontWeight(.regular)
                            Spacer()
                        }
                        Text("You can feel best performance on your drive 💪")
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                        Spacer()
                        //                    Spacer()
                        HStack{
                            NavigationLink{
                                HomeScreen()
                            } label: {
                                Text("Skip")
                                    .font(.title3)
                                    .fontWeight(.regular)
                                    .foregroundStyle(Color.black)
                            }.frame(width: 115, height: 75)
                                .background(Color.white)
                                .cornerRadius(15)
                            NavigationLink {
                                OnboardingScreen_2()
                            } label: {
                                Text("Next")
                                    .font(.title3)
                                    .fontWeight(.regular)
                                    .foregroundStyle(Color.white)
                            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .frame(height: 75)
                                .background(Color.colorButton)
                                .cornerRadius(15)
                        }
                        
                    }.padding(20)
                }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OnboardingScreen_1()
}
