//
//  MainView.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 31.08.2024.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 30) {
                    NavigationLink {
                    } label: {
                        CustomButton(text: "Тренировка", width: 250, height: 100)
                    }
                    NavigationLink {
                        VocabularyView()
                    } label: {
                        CustomButton(text: "Словарь", width: 250, height: 100)
                    }
                }
            }
            .modifier(BackgroundModifier(blurRadius: 0.8))
            .navigationTitle("Меню")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        .tint(.black)
    }
}
