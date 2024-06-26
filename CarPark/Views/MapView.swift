//
//  MapView.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 30/03/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var showingBottomSheet = false
    @Environment(\.dismiss) var dismiss
    @Namespace var mapScope
    
    var body: some View {
        ZStack{
            Map {
//                Marker("Empire state building", coordinate: .empireStateBuilding)
//                    .tint(.orange)
                Annotation("Empire State Building", coordinate: .empireStateBuilding) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.teal)
                        Button {
                            showingBottomSheet = true
                        } label: {
                            Image("logopark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                        }
                        .sheet(isPresented: $showingBottomSheet, content: {
                            BottomSheetView1()
                                .presentationDetents([.fraction(5), .medium])
                                .presentationDragIndicator(.hidden)
                        })
                    }
                }
            }
            VStack(alignment: .leading){
                Button{
                    dismiss()
                } label: {
                    HStack(alignment: .top){
                        Image(systemName: "chevron.left")
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(Color.white)
                        Spacer()
                    }
                }
                                
                Spacer()
            }.padding(20)
        }
        .navigationBarBackButtonHidden(true)
        .mapStyle(.hybrid(elevation: .automatic))
        .mapControls {
            MapUserLocationButton(scope: mapScope)
            MapCompass()
            MapScaleView()
        }
        .mapScope(mapScope)
    }
}

struct BottomSheetView1: View {
    @State private var showingBottomSheet2 = false
    var body: some View {
        VStack(alignment: .leading){
            Text("Book your car")
                .font(.title)
            Text("Parking")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
            GroupBox {
                HStack {
                    VStack(alignment: .leading){
                        Text("Zone")
                            .foregroundStyle(Color.greyScale3)
                        Text("A-013")
                            .font(.title)
                            .padding(.bottom, 20)
                            .foregroundStyle(Color.white)
                        Text("Time Slot")
                            .foregroundStyle(Color.greyScale3)
                        Text("10:02 PM - 12:20AM")
                            .foregroundStyle(Color.white)
                    }
                    Spacer()
                    VStack{
                        ZStack{
                            Image(systemName: "location.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color.black)

                        }
                        .frame(width: 80, height: 60)
                        .background(Color.white)
                        .padding(.bottom, 26)
                        
                        
                        Text("$20")
                            .foregroundStyle(Color.white)
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
            .backgroundStyle(Color.gray)
            
            
            Button("Start Booking") {
                showingBottomSheet2 = true
                }
                .font(.title3)
                .fontWeight(.regular)
                .foregroundStyle(Color.black)
                .sheet(isPresented: $showingBottomSheet2, content: {
                    BookingProgress_1()
                        .presentationDetents([.large])
//                        .presentationDragIndicator(.hidden)
                }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 75)
                .background(Color.yellow)
                .cornerRadius(15)
        }.padding(20)
    }
}

struct BottomSheetView3: View {
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
                NavigationLink("End Parking") {
                    ChargingScreen()
                       
                }
                .navigationBarBackButtonHidden(true)
                .font(.title3)
                .frame(maxWidth: .infinity)
                .frame(height: 75)
                .background(Color.yellow)
                .cornerRadius(15)
                .foregroundStyle(Color.black)
                
            }.padding(20)
        }
    }
}



#Preview {
    MapView()
}

extension CLLocationCoordinate2D {
    static let weequahicPark = CLLocationCoordinate2D(latitude: 40.7063, longitude: -74.1973)
    static let empireStateBuilding = CLLocationCoordinate2D(latitude: 40.7484, longitude: -73.9857)
    static let columbiaUniversity = CLLocationCoordinate2D(latitude: -7.254287057481375, longitude: 112.78147883184295
)
}
