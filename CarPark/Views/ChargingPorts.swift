//
//  ChargingPorts.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 23/04/24.
//

import SwiftUI

struct ChargingPorts: View {
    @Environment(\.dismiss) var dismiss
    @State private var showingBottomSheet = false
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Text("Select charging ports")
                    .aspectRatio(contentMode: .fit)
                //                .frame(maxWidth: .infinity)
                    .frame(alignment: .topLeading)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                    .frame(alignment: .leading)
                    .padding(.bottom, 50)
                
                Button {
                    showingBottomSheet = true
                } label: {
                    HStack{
                        Circle()
                            .stroke(.white)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(Color.black)
                            .overlay {
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal)
                            .foregroundStyle(Color.white)
                        VStack(alignment: .leading){
                            Text("CHADEMO")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .padding(.bottom, 10)
                            Text("$3.5/KWt")
                                .foregroundStyle(Color.green)
                                .font(.title2)
                        }
                    }.padding(.bottom, 60)
                }.sheet(isPresented: $showingBottomSheet, content: {
                    ChargingPortsBottom1()
                        .presentationDetents([.height(580) ])
                        .presentationDragIndicator(.hidden)
                })
                
                Button {
                    showingBottomSheet = true
                } label: {
                    HStack{
                        Circle()
                            .stroke(.white)
                            .frame(width: 100, height: 100)
                            .foregroundStyle(Color.black)
                            .overlay {
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal)
                            .foregroundStyle(Color.white)
                        VStack(alignment: .leading){
                            Text("Type 2-3")
                                .font(.title)
                                .foregroundStyle(Color.white)
                                .padding(.bottom, 10)
                            Text("$4.41/KWt")
                                .foregroundStyle(Color.green)
                                .font(.title2)
                        }
                    }
                }
            .sheet(isPresented: $showingBottomSheet, content: {
                    ChargingPortsBottom1()
                        .presentationDetents([.height(580) ])
                        .presentationDragIndicator(.hidden)
                })
                
                Spacer()
            } .toolbar{
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
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
           
           
        } .navigationBarBackButtonHidden(true)
    }
}

struct ChargingPortsBottom1: View {
    @State var showSheet = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Vehicles")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.white)
                    }
                    
                }
                HStack {
                    Circle()
                        .stroke(Color.white)
                        .frame(width: 80, height: 80)
                        .foregroundStyle(Color.black)
                        .overlay {
                            Image(systemName: "car.rear")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                        }
                        .padding(.horizontal)
                        .foregroundStyle(Color.white)
                    
                    VStack(alignment: .leading) {
                        Text("Tesla-01")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.green)
                            .padding(.bottom, 7)
                        
                        Text("Private vehicle")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                    }
                    Spacer()
                }.padding(.bottom, 20)
                HStack {
                    Text("Ticket details")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                }
                HStack{
                    Circle()
                        .stroke(Color.white)
                        .frame(width: 80, height: 80)
                        .overlay {
                            Text("P")
                                .font(.title)
                                .aspectRatio(contentMode: .fit)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.green)
                        }
                        .padding(.horizontal)
                        .foregroundStyle(Color.white)
                    VStack(alignment: .leading) {
                        Text("1 minute step")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.green)
                            .padding(.bottom, 7)
                        Text("Zone 3005")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                        Text("Working hours : 00:00 - 23:59")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                            .padding(.bottom, 5)
                        Text("Period number")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundStyle(Color.greyScale3)
                        Text("1 min")
                            .foregroundStyle(Color.black)
                            .frame(width: 95, height: 40)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                    }
                    Spacer()
                }.padding(.bottom, 20)
                Spacer()
                Divider()
                    .padding(.bottom, 10)
                HStack{
                    VStack(alignment: .leading){
                        Text("Total")
                            .font(.title3)
                            .foregroundStyle(Color.greyScale4)
                        Text("1,50 EUR/h")
                            .font(.title2)
                            .foregroundStyle(Color.white)
                            .fontWeight(.bold)
                    }.padding(.horizontal)
                    Button {
                        showSheet = true
                    } label: {
                        Text ("Continue")
                        .font(.title3)
                        .frame(alignment: .bottom)
                        .frame(width: 190, height: 60)
                        .background(Color.yellow)
                        .cornerRadius(.infinity)
                        .foregroundStyle(Color.black)
                        
                    }
                    .fullScreenCover(isPresented: $showSheet) {
                        MultiplePayment()
                    }
                }
                
            }.padding(20)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ChargingPorts()
}
