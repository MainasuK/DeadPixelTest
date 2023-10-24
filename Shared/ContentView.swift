//
//  ContentView.swift
//  Shared
//
//  Created by Cirno MainasuK on 2020/12/5.
//

import UIKit
import SwiftUI

struct ContentView: View {
    
    static let backgroundColors: [Color] = [
        .white,
        .black,
        .red,
        .green,
        .blue,
        .yellow,
        .pink,
        .purple,
        .orange,
        .gray,
        Color(UIColor.systemRed),
        Color(UIColor.systemGreen),
        Color(UIColor.systemBlue),
        Color(UIColor.systemYellow),
        Color(UIColor.systemPink),
        Color(UIColor.systemPurple),
        Color(UIColor.systemOrange),
        Color(UIColor.systemGray),
    ]
    
    @State var didTapped = false
    @State var backgroundColorIndex = 0
    
    var body: some View {
        ZStack {
            ContentView.backgroundColors[backgroundColorIndex]
                .edgesIgnoringSafeArea(.all)
            if !didTapped {
                Text("Tap to change color")
            }
        }
        .onTapGesture {
            didTapped = true
            backgroundColorIndex = (backgroundColorIndex + 1) % ContentView.backgroundColors.count
        }
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
