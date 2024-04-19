//
//  ChargingScreen.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 03/04/24.
//

import SwiftUI

struct ChargingScreen: View {
    @State private var bottomSheetView3 = false
    var body: some View {
        NavigationView {
            Label("Reserve Electricity", systemImage: "bolt.circle")
            
                .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                NavigationLink {
                                    BottomSheetView3()
                                } label: {
                                    Image(systemName: "chevron.left")
                                }
                            }
                        }
                }
    }
}

#Preview {
    ChargingScreen()
}
