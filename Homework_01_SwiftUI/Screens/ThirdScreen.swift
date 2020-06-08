//
//  ThirdScreen.swift
//  Homework_01_SwiftUI
//
//  Created by Даня on 03.06.2020.
//  Copyright © 2020 Be Wind Lab. All rights reserved.
//

import SwiftUI

struct ThirdScreen: View {
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("Open a modal screen")
                .onTapGesture {
                    self.showModal.toggle()
            }
        }
        .sheet(isPresented: $showModal) {
            ModalScreen()
        }
    }
}

struct ModalScreen: View {

       @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

       var body: some View {
           VStack {
               Text("I'm Modal")
               Text("Close").onTapGesture {
                   self.presentationMode.wrappedValue.dismiss()
            }
        }
        }

}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
