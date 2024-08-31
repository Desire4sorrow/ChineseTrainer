//
//  AddWordView.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 01.09.2024.
//

import SwiftUI
import SwiftData

struct AddWordView: View {
    @State private var translate: String = ""
    @State private var hieroglyph: String = ""
    @State private var pinyin: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.modelContext) private var modelContext
    
    @State private var showingAlert = false
    
    var needAddWord: Bool {
        !translate.isEmpty && !hieroglyph.isEmpty && !pinyin.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            EditorStackView(text: $translate, title: "Перевод")
            EditorStackView(text: $hieroglyph, title: "Иероглиф")
            EditorStackView(text: $pinyin, title: "Пиньинь")
        }
        .alert("Все поля должны быть заполнены", isPresented: $showingAlert) {
            Button("Понятно", role: .cancel) { }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            addItem()
                        } label: {
                            Text("Добавить").font(.callout)
                        }
                    }
                    Spacer()
                }
            }
        }
        .modifier(BackgroundModifier(blurRadius: 3))
    }
    
    
    private func addItem() {
        guard needAddWord else {
            showingAlert.toggle()
            return
        }
        let newItem = Item(translate: translate, hieroglyph: hieroglyph, pinyin: pinyin)
        modelContext.insert(newItem)
        presentationMode.wrappedValue.dismiss()
    }
}
