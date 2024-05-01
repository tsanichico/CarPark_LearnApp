//
//  MultiplePayment.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 27/04/24.
//

import SwiftUI

struct MultiplePayment: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Text("Select \npayment \nmethod")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "creditcard")
                    
                        .padding()
                    
                        .frame(width: 45, height: 85)
                        .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white,  lineWidth: 1))
                }
                .padding(.bottom, 30)
                
                HStack{
                    Text("Cards")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Text("+ Top up")
                        .foregroundStyle(Color.black)
                        .frame(width: 120, height: 40)
                        .background(RoundedRectangle(cornerRadius: .infinity).fill(Color.green))
                }
                
                NavigationLink {
                    ParkingTicketDetails()
                } label: {
                    HStack{
                        Circle()
                            .stroke(.white)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(Color.black)
                            .overlay {
                                Image(systemName: "creditcard")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                            }
                            .padding(.horizontal)
                            .foregroundStyle(Color.white)
                        VStack(alignment: .leading) {
                            Text("HRK 60.00")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.green)
                                .padding(.bottom, 5)
                            
                            Text("Account")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.greyScale4)
                            
                        }
                    }
                    Spacer()
                    
                }
                .padding(.bottom, 50)
                
                HStack{
                    Text("Credit Cards")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Text("+ Add")
                        .foregroundStyle(Color.black)
                        .frame(width: 100, height: 40)
                        .background(RoundedRectangle(cornerRadius: .infinity).fill(Color.green))
                }
                
                NavigationLink {
                    ParkingTicketDetails()
                } label: {
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
                            .padding(.horizontal)
                            .foregroundStyle(Color.white)
                        VStack(alignment: .leading) {
                            Text("3056****5904")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                                .padding(.bottom, 5)
                            Text("Ivan Horvat . 06/26")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.greyScale4)
                            
                        }
                    }
                    Spacer()
                    
                }
                .padding(.bottom, 20)
                
                NavigationLink {
                    ParkingTicketDetails()
                } label: {
                    HStack{
                        Circle()
                            .stroke(.white)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(Color.black)
                            .overlay {
                                Image("visa-logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 35, height: 35)
                            }
                            .padding(.horizontal)
                            .foregroundStyle(Color.white)
                        VStack(alignment: .leading) {
                            Text("5213****4854")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                                .padding(.bottom, 5)
                            Text("Ivan Horvat . 06/26")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.greyScale4)
                            
                        }
                    }
                    Spacer()
                    
                }
                
                
                Spacer()
            }.toolbar {
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    MultiplePayment()
}
