//
//  BackgroundModifier.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 01.09.2024.
//

import SwiftUI

struct BackgroundModifier: ViewModifier {
    
    let blurRadius: CGFloat
    private let bounds = UIScreen.main.bounds
    
    func body(content: Content) -> some View {
        content
            .background(
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: bounds.width, height: bounds.height)
                    .opacity(0.8)
                    .blur(radius: blurRadius)
            )
    }
}
