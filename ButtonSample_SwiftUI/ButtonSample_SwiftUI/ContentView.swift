//
//  ContentView.swift
//  ButtonSample_SwiftUI
//
//  Created by home on 2020/10/12.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isTopButtonTapped = false
    @State var isBottomButtonTapped = false
    
    var body: some View {
        VStack {
            SampleButton(isTapped: $isTopButtonTapped)
                .padding()
            
            SampleButton(isTapped: $isBottomButtonTapped)
        }
    }
}

struct SampleButton: View {
    @Binding var isTapped: Bool
    
    var body: some View {
        Button(action: {
            self.isTapped = true
        }) {
            Text(isTapped ? "Button tapped!" : "Button sample")
                .frame(width: 200, height: 70, alignment: .center)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(10, antialiased: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
