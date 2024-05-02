//
//  BookingProgress_1.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 02/05/24.
//

import SwiftUI

struct BookingProgress_1: View {
    @Environment (\.dismiss) var dismiss
    @State private var showingBottomSheet3 = false
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
                    .padding(.bottom, 35)
                HStack{
                    Text("Price:")
                        .foregroundStyle(Color.greyScale4)
                    Text("$20")
                }
                ZStack{
                    Image("mobil")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    //                    .frame(width: 90, height: 195)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                        .padding()
                    VStack{
                        Spacer()
                        Rectangle()
                            .frame(width: 150, height: 113)
                            .foregroundStyle(Color.green)
                            .opacity(0.8)
                    }
                    VStack{
                        Spacer()
                        Text("Done")
                            .font(.headline)
                            .padding(.bottom,5)
                            .foregroundStyle(Color.black)
                        NavigationLink {
                            BookingProgress_2()
                        } label: {
                            Image(systemName: "arrow.right.square.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 20)
                        }
                        .padding(.bottom, 40)
                        .foregroundStyle(Color.black)
                        
                        
                    }
                }
                .frame(width: 150, height: 225)
                .background(Color.greyScale5)
                
                HStack{
                    Text("30:20")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("min")
                        .font(.headline)
                }.padding(.bottom, 5)
                
                Text("12.10 PM - 01 Dec 2024")
                    .font(.footnote)
                    .foregroundStyle(Color.greyScale4)
                    .padding(.bottom, 30)
                
                ZStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("Zone")
                                .font(.headline)
                                .foregroundStyle(Color.black)
                            Text("A-013")
                                .font(.title2)
                                .foregroundStyle(Color.black)
                        }
                        Spacer()
                        ZStack{
                            Image(systemName: "location.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.black)
                            
                        }
                        .frame(width: 80, height: 60)
                        .background(Color.greyScale3)
                        
                    }
                }
                .padding(20)
                .frame(width: 300, height: 110)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.bottom,10)
                Button("Stop") {
                    dismiss()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 75)
                .background(Color.yellow)
                .cornerRadius(.infinity)
                .foregroundStyle(Color.black)
                
                //            Spacer()
            }.padding(20)
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    BookingProgress_1()
}
