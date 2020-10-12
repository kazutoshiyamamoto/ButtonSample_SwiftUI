//
//  ContentView.swift
//  ButtonSample_SwiftUI
//
//  Created by home on 2020/10/12.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Button Sample")
                    .frame(width: 200, height: 70, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(10, antialiased: true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
