//
//  ChargingScreen.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 03/04/24.
//

import SwiftUI



struct ChargingScreen: View {

    @Environment(\.dismiss) var dismiss
    
    @State var maxHeight : CGFloat = UIScreen.main.bounds.height/3
    @State var sliderProgress : CGFloat = 0
    @State var sliderHeight : CGFloat = 0
    @State var lastDragValue : CGFloat = 0
    
    
    var body: some View {
        
        NavigationView {
            VStack{
                VStack(alignment: .leading){
                    Label("Reserve Electricity", systemImage: "bolt.circle")
                        .font(.title2)
                    //                    .multilineTextAlignment(.leading)
                        .foregroundStyle(Color.yellow)
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
//                        .toolbar {
//                            ToolbarItem(placement: .navigationBarLeading) {
//                                NavigationLink {
//                                    BottomSheetView3()
//                                } label: {
//                                    Image(systemName: "chevron.left")
//                                }
//                            }
//                        }
                        .padding(.bottom, 10)
                    Text("How much energy do you need")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                    
                }
                
                Text("You have 10%")
                    .frame(maxWidth: .infinity)
                    .font(.title3)
                    
                    .frame(height: 60)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 20)
                            .strokeBorder(.greyScale3, lineWidth: 1)
                    }).padding(.bottom, 10)
                    
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 50, height: 15)
                    .foregroundStyle(Color.greyScale3)
                    .opacity(0.2)
                    .padding(.bottom,5)
                
                    ZStack(alignment: .bottom, content: {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(Color.greyScale3)
                            .opacity(0.2)
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: sliderHeight)
                            
                        })
                        .frame(width: 125, height: maxHeight)
                        .cornerRadius(20)
                    
                    
                    .gesture(DragGesture(minimumDistance: 0)
                        .onChanged({ (value) in
                            let translation = value.translation
                            sliderHeight = -translation.height
                            
                            sliderHeight = sliderHeight > maxHeight ? maxHeight : sliderHeight
                            
                            sliderHeight = sliderHeight >= 0 ? sliderHeight : 0
                            
                            let progress = sliderHeight / maxHeight
                            
                            sliderProgress = progress <= 1.0 ? progress : 1
                        }).onEnded({ (value) in
                            
                            sliderHeight = sliderHeight > maxHeight ? maxHeight : sliderHeight
                            
                            sliderHeight = sliderHeight >= 0 ? sliderHeight : 0
                            
                            lastDragValue = sliderHeight
                        }))
                    .padding(.bottom, 10)
                
                
                Text("\(Int(sliderProgress * 100))%")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 30)
                Button ("Tap to continue"){
                    //
                }
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .bottom)
                .frame(height: 60)
                .background(Color.yellow)
                .cornerRadius(.infinity)
                .foregroundStyle(Color.black)
                
                    
                
                
                
                
                Spacer()
            }.padding(15)
            
        }
        .navigationBarBackButtonHidden(true)
       
        
    }
}

#Preview {
    ChargingScreen()
}
