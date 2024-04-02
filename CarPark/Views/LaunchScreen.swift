//
//  LaunchScreen.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import SwiftUI

struct LaunchScreen: View {
    @State var isActive: Bool = false
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay {
                if self.isActive {
                    OnboardingScreen_1()
                } else {
                    ZStack{
                        Circle()
                            .frame(width: 300)
                            .foregroundStyle(Color.greyScale4)
                        Circle()
                            .frame(width: 200)
                            .foregroundStyle(Color.white)
                        VStack{
                            Image(systemName: "car.front.waves.up")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90, height: 80)
                                .foregroundStyle(Color.black)
                                .padding(.bottom, 10)
                            
                            Text("CarPark")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.black)
                        }
                    }
                }
            }
    }
}

#Preview {
    LaunchScreen()
}
