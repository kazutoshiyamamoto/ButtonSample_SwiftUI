//
//  ContentView.swift
//  ButtonSample_SwiftUI
//
//  Created by home on 2020/10/12.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 上部のボタンの選択状態を管理する変数
    @State var isTopButtonTapped = false
    
    // 下部のボタンの選択状態を管理する変数
    @State var isBottomButtonTapped = false
    
    var body: some View {
        VStack {
            // インスタンス化する際に引数にisTopButtonTappedを指定したことで、
            // 構造体SampleButtonの変数isTappedの状態と、isTopButtonTappedの状態が結びつく
            // つまり、このインスタンスにおいてはisTappedがtrueになればisTopButtonTappedもtrueとなる
            SampleButton(isTapped: $isTopButtonTapped)
                .padding()
            
            // インスタンス化する際に引数にisBottomButtonTappedを指定したことで、
            // 構造体SampleButtonの変数isTappedの状態と、isBottomButtonTappedの状態が結びつく
            // つまり、このインスタンスにおいてはisTappedがtrueになればisBottomButtonTappedもtrueとなる
            SampleButton(isTapped: $isBottomButtonTapped)
        }
    }
}

struct SampleButton: View {
    // @BindingをつけるとSampleButtonをインスタンス化する際にisTappedと結びつける変数を指定できる
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
