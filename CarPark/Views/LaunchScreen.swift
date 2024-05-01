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
                            Image("logopark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .foregroundStyle(Color.black)
                                .cornerRadius(20)
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
    }
}

#Preview {
    LaunchScreen()
}
