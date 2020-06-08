//
//  DetailItemScreen.swift
//  Homework_01_SwiftUI
//
//  Created by Даня on 08.06.2020.
//  Copyright © 2020 Be Wind Lab. All rights reserved.
//

import SwiftUI

struct DetailItemScreen: View {
    var model: DetailItemModel
    
    var body: some View {
        VStack {
            Text(model.detailDescription)
            Image(systemName: model.imageName)
        }
    }
}
