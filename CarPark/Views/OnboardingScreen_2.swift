//
//  OnboardingScreen_2.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import SwiftUI

struct OnboardingScreen_2: View {
    var body: some View {
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
                        Image(systemName: "bolt.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.orange)
                            .padding(.horizontal, 10)
                        Text("Charging")
                            .font(.body)
                            .foregroundStyle(Color.white)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    Text("Awesome 🧤experience car energy charge")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                    Spacer()
//                    Spacer()
                    HStack{
                        Button(action: {
                            //fill the destination
                        }, label: {
                            Text("Back")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.black)
                        }).frame(width: 115, height: 75)
                            .background(Color.white)
                            .cornerRadius(15)
                        Button(action: {
                            //fill the destination
                        }, label: {
                            Text("Next")
                                .font(.title3)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.white)
                        }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .frame(height: 75)
                            .background(Color.colorButton)
                            .cornerRadius(15)
                    }
                    
                }.padding(20)
            }
    }
}

#Preview {
    OnboardingScreen_2()
}
