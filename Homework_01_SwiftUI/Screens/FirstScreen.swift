//
//  FirstScreen.swift
//  Homework_01_SwiftUI
//
//  Created by Даня on 03.06.2020.
//  Copyright © 2020 Be Wind Lab. All rights reserved.
//

import SwiftUI

struct FirstScreen: View {
    
    @Binding var selection: Int
    @Binding var currentItemIndex: Int?
    
    var body: some View {
        VStack {
            Button(action: {
                self.action()
            }) {
                Text("Open the first item on the second Screen")
            }
        }
    }
    
    func action() {
       selection = 1
       currentItemIndex = 0
    }
}

