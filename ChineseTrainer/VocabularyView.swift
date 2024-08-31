//
//  VocabularyView.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 31.08.2024.
//

import SwiftUI
import SwiftData

struct VocabularyView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        wordsList
            .navigationTitle("Словарь")
            .toolbarBackground(.hidden, for: .navigationBar)
            .scrollContentBackground(.hidden)
            .modifier(BackgroundModifier(blurRadius: 3))
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    VStack {
                        NavigationLink {
                            AddWordView()
                        } label: {
                            CustomButton(text: "Добавить", width: 300, height: 40)
                        }
                        Spacer()
                    }
                }
            }
    }
    
    private var wordsList: some View {
        List {
            ForEach(items) { item in
                HStack {
                    Text(item.translate)
                    Spacer()
                    Text(item.hieroglyph)
                    Spacer()
                    Text(item.pinyin)
                }
                .frame(height: 30)
            }
            .onDelete(perform: deleteItems)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}
