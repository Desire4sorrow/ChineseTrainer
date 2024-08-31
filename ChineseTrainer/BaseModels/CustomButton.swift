//
//  CustomButton.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 31.08.2024.
//

import SwiftUI
import Foundation

struct CustomButton: View {
    var text: String
    var width: CGFloat
    var height: CGFloat
    var handler: (() -> Void)?
    
    var body: some View {
        Button(action: {
            handler?()
        }, label: {
            Text(text)
        })
        .padding()
        .font(height > 70 ? .largeTitle : .title)
        .frame(width: width, height: height, alignment: .center)
        .background(Color.indigo.luminanceToAlpha())
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 25))
        .disabled(handler == nil)
    }
}
