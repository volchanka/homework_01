//
//  ContentView.swift
//  Homework_01_SwiftUI
//
//  Created by Даня on 03.06.2020.
//  Copyright © 2020 Be Wind Lab. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Int = 0
    @State private var currentItemIndex: Int? = nil
    
    var body: some View {
        TabView(selection: $selection) {
            //1
            FirstScreen(selection: $selection, currentItemIndex: $currentItemIndex)
                .tabItem {
                    VStack {
                        Text("FirstTab")
                        Image(systemName: "greaterthan.circle")
                    }
            }
            .tag(0)
            //2
            ListScreen(currentItem: $currentItemIndex)
                .tabItem {
                    VStack {
                        Text("SecondTab")
                        Image(systemName: "equal.square")
                    }
            }
            .tag(1)
            //3
            ThirdScreen()
            .tabItem {
                VStack {
                    Text("ThirdTab")
                    Image(systemName: "plus")
                }
            }
        .tag(2)
            
        } //TabView
            .accentColor(.purple)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
