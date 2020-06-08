//
//  ListScreen.swift
//  Homework_01_SwiftUI
//
//  Created by Даня on 03.06.2020.
//  Copyright © 2020 Be Wind Lab. All rights reserved.
//

import SwiftUI


struct ListScreen: View {
    
    @Binding var currentItem: Int?
    
    var modelsArray: [ItemModel] =
        [ItemModel(title: "Sun", detailItemModel: DetailItemModel(detailDescription:"Sun icon", imageName: "sun.max"), tag: 0),
         ItemModel(title: "Cloud", detailItemModel: DetailItemModel(detailDescription:"Cloud icon", imageName: "cloud"), tag: 1),
         ItemModel(title: "Rain", detailItemModel: DetailItemModel(detailDescription:"Rain icon", imageName: "cloud.rain"), tag: 2),
         ItemModel(title: "Snow", detailItemModel: DetailItemModel(detailDescription:"Snow icon", imageName: "cloud.snow"), tag: 3)]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(modelsArray, id: \.title) { item in
                        NavigationLink(destination: DetailItemScreen(model: item.detailItemModel), tag: item.tag, selection: self.$currentItem ) {
                            HStack {
                                Text(item.title)
                            }
                        }
                    }
                }
            } // VStack
            .navigationBarTitle("Weather list")
        }
    }
}






