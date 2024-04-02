//
//  FeatureModels.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import Foundation

struct FeatureModels:Identifiable, Codable {
    var id:UUID = UUID()
    let icon: String
    let name: String
    let featurePrimary: Bool
}
