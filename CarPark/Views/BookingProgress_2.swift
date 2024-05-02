//
//  BookingProgress_2.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 02/05/24.
//

import SwiftUI

struct BookingProgress_2: View {
    @Environment (\.dismiss) var dismiss
    @State var showSheet = false
    var body: some View {
        NavigationView {
            VStack{
                Text("KB 1142 ABC")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 3)
                Text("Maxie Car")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.greyScale4)
                    .padding(.bottom, 20)
                HStack{
                    Text("Price:")
                        .foregroundStyle(Color.greyScale4)
                    Text("$20")
                }
                .padding(.bottom, 20)
                
                Text("Completed")
                    .foregroundStyle(Color.black)
                    .frame(width: 140, height: 40)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                
                ZStack{
                    Circle()
                        .frame(width: 300)
                        .foregroundStyle(Color.greyScale4)
                    Circle()
                        .frame(width: 200)
                        .foregroundStyle(Color.white)
                    HStack{
                        Image("street")
                        Image("mobil")
                        Image("street")
                    }
                }
                .padding(.bottom, 10)
                Button("End Parking") {
                    showSheet = true
                }
                .navigationBarBackButtonHidden(true)
                .font(.title3)
                .frame(maxWidth: .infinity)
                .frame(height: 75)
                .background(Color.yellow)
                .cornerRadius(.infinity)
                .foregroundStyle(Color.black)
                .fullScreenCover(isPresented: $showSheet) {
                    ChargingScreen()
                }
            }.toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.white)
                    }
                    
                }
            }
            .padding(20)
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    BookingProgress_2()
}
