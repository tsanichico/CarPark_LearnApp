//
//  FeaturesView.swift
//  CarPark
//
//  Created by Tsani Chico Bragi on 26/03/24.
//

import SwiftUI

struct FeaturesView: View {
//    @State var :[FeatureModels] = [FeatureModels]()
    let fitur: FeatureModels
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(fitur.featurePrimary ? .gray : .yellow)
                .frame(width: 108, height: 125)
            VStack{
                Image(fitur.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 35)
                    .foregroundStyle(fitur.featurePrimary ? .greyScale3 : .black)
                    .padding(.bottom, 5)
                Text(fitur.name)
                    .font(.system(size: 20))
                    .foregroundStyle(fitur.featurePrimary ? .greyScale3 : .black)
                    .fontWeight(.medium)
            }
        }

    }
}



//
struct FeaturesView_Previews: PreviewProvider {
    static var feature1 = FeatureModels(icon: "fofo1", name: "Feature1", featurePrimary: false)
    static var feature2 = FeatureModels(icon: "fofo2", name: "Feature2", featurePrimary: true)

    static var previews: some View {
        Group{
            FeaturesView(fitur: feature1)
            FeaturesView(fitur: feature2)
        }.previewLayout(.sizeThatFits)
    }
}
