//
//  ParkingTicketDetails.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 29/04/24.
//

import SwiftUI

struct ParkingTicketDetails: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {

        NavigationView {
            VStack {
                HStack{
                    Text("Parking \nticket \ndetails")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 75)
                        .overlay {
                            Image(systemName: "location.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundStyle(Color.black)
                        }
                        
                    
                }
                .padding(.bottom, 25)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(maxWidth: .infinity)
                    .frame(height: 160)
                    .foregroundStyle(Color.greyScale5)
                    .overlay {
                        HStack {
                            ZStack{
                                Circle()
                                    .frame(width: 80, height: 80)
                                    .overlay (alignment: .bottomTrailing){
                                       
                                        Circle()
                                            .frame(width: 18, height: 18)
                                            .foregroundStyle(Color.red)
                                    }
                                    .padding(.horizontal)
                                    .foregroundStyle(Color.green)
                                Text("P")
                                    .font(.title)
                                    .aspectRatio(contentMode: .fit)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.black)
                            }
                            .padding(.bottom, 30)
//                            Spacer()
                            VStack(alignment: .leading) {
                                Text("ZG1234IG. \nMamin AUTO")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .padding(.bottom, 10)
                                
                                Text("Zone 1 - Rovinj")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                
                                Text("Hourly parking ticket")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                
                            }
                        }
                    }.padding(.bottom, 15)
                HStack{
                    Text("Log Activities")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                HStack{
                    VStack{
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.green)
                        Rectangle()
                            .frame(width: 5, height: 10)
                            .foregroundStyle(Color.green)
                        Rectangle()
                            .frame(width: 5, height: 10)
                            .foregroundStyle(Color.green)
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.green)
                    }
                    VStack {
                        Text("15 : 06")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        Text("15 : 41")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    VStack {
                        Text("03:06:2024")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                            .padding(.bottom, 30)
                        Text("03:06:2024")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                    }
                    
                    
                    Spacer()
                }.padding(.bottom, 20)
                HStack{
                    Circle()
                        .stroke(.white)
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.black)
                        .overlay {
                            Image("mastercard-logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        }
//                        .padding(.horizontal)
                        .foregroundStyle(Color.white)
                    VStack(alignment: .leading) {
                        Text("3056****5904")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                        Text("Ivan Horvat . 06/26")
                            .font(.title2)
                            .fontWeight(.regular)
                            .padding(.bottom, 16)
                        
                        Text("Total")
                            .font(.title2)
                            .foregroundStyle(Color.greyScale4)
                            .fontWeight(.medium)
                        Text("HRK 1.00")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.green)
                    }.padding(.horizontal)
                    
                    
                    Spacer()
                }
                
                
//                Spacer()
            }
            .padding(20)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.white)
                    }
                }
            }
            
        } .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ParkingTicketDetails()
}
