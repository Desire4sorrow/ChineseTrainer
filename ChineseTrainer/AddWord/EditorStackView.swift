//
//  EditorStackView.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 01.09.2024.
//

import SwiftUI

struct EditorStackView: View {
    
    @Binding var text: String
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .bold()
            TextEditor(text: $text)
                .clipShape(.rect(cornerRadius: 8))
        }
        .frame(width: 300, height: 40)
    }
}
