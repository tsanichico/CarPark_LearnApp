//
//  HomeScreen.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import SwiftUI

struct HomeScreen: View {
    let dataFeatures = [FeatureModels(icon: "Car", name: "Car", featurePrimary: false),
                        FeatureModels(icon: "Bus", name: "Bus", featurePrimary: true),
                        FeatureModels(icon: "Bike", name: "Bike", featurePrimary: true)
                        
    ]
    var body: some View {
        ZStack{
            NavigationView {
                Color.black
                    .ignoresSafeArea()
                    .overlay{
                        VStack(alignment: .leading){
                            HStack{
                                Image("Profile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 45, height: 45)
                                Spacer()
                                Image(systemName: "location.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color.white)
                                
                            }.padding(.bottom)
                            Text("Hello, Muhammad")
                                .font(.title2)
                                .fontWeight(.regular)
                                .foregroundStyle(Color.white)
                                .padding(.bottom)
                            Text("Made easly")
                                .font(.system(size: 40))
                                .fontWeight(.medium)
                                .foregroundStyle(Color.white)
                            Text("Parking")
                            //                        .font(.largeTitle)
                                .font(.system(size: 40))
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.white)
                            
                            
                            HStack {
                                Spacer()
                                ForEach(dataFeatures) {data in
                                    FeaturesView(fitur: data)}
                            }
                            ZStack{
                                VStack(alignment: .center){
                                    HStack{
                                        Image("street")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Image("mobil")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                        Image("street")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    }
                                }.frame(maxWidth: .infinity)
                                VStack{
                                    Spacer()
                                    NavigationLink {
                                        MapView()
                                    } label: {
                                        ZStack{
                                            Circle()
                                                .frame(width: 120, height: 120)
                                                .foregroundStyle(Color.yellow)
                                            Text("START \nTO ADD CAR")
                                                .multilineTextAlignment(.center)
                                                .font(.subheadline)
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.black)
                                            
                                        }
                                    }
                                   
                                }
                                
                            }
                            
                        }.padding(20)
                        
                    }
            }
        }.navigationBarBackButtonHidden(true)
    }
}


#Preview {
    HomeScreen()
}
