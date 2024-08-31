//
//  Item.swift
//  ChineseTrainer
//
//  Created by Ruslan Sanarkhin on 31.08.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var translate: String
    var hieroglyph: String
    var pinyin: String
    
    init(translate: String, hieroglyph: String, pinyin: String) {
        self.translate = translate
        self.hieroglyph = hieroglyph
        self.pinyin = pinyin
    }
}
