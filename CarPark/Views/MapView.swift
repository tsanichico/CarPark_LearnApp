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

    
    var body: some View {
        ZStack{
            Map {
                Marker("Empire state building", coordinate: .empireStateBuilding)
                    .tint(.orange)
                Annotation("Dental Care drg. Sri Kurniati", coordinate: .columbiaUniversity) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.teal)
                        Button("🎓") {
                            showingBottomSheet = true
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
                                HStack(alignment: .top){
                                    Image(systemName: "chevron.left")
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 30, height: 30)
                                    Spacer()
                                }
                                Spacer()
            }.padding(20)
        }
        .mapStyle(.hybrid(elevation: .automatic))
        .mapControls {
            MapUserLocationButton()
            MapCompass()
            MapScaleView()
        }
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
                    BottomSheetView2()
                        .presentationDetents([.fraction(5), .large])
//                        .presentationDragIndicator(.hidden)
                }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 75)
                .background(Color.yellow)
                .cornerRadius(15)
        }.padding(20)
    }
}

struct BottomSheetView2: View {
    @Environment (\.dismiss) var dismiss
    @State private var showingBottomSheet3 = false
    var body: some View {
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
                    Button {
                        showingBottomSheet3 = true
                    } label: {
                        Image(systemName: "arrow.right.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 20)
                    }
                    .padding(.bottom, 40)
                    .foregroundStyle(Color.black)
                    .sheet(isPresented: $showingBottomSheet3, content: {
                        BottomSheetView3()
                            .presentationDetents([.fraction(5), .large])
    //                        .presentationDragIndicator(.hidden)
                    })

                    
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
            .cornerRadius(15)
            .foregroundStyle(Color.black)
            
//            Spacer()
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
                        .navigationBarBackButtonHidden(true)
                }
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
