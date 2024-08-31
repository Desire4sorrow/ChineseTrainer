//
//  CustomBackButton.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 01.09.2024.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image("back-arrow")
        }
    }
}
