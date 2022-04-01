//
//  CellModel.swift
//  Emoji Project
//
//  Created by u on 31.03.2022.
//

import Foundation

struct Cell {
    
    var emoji: String
    var name: String
    let description: String
    
    var isFavorite: Bool = false
    
    init(name: String, emoji: String, description: String) {
        self.name = name
        self.emoji = emoji
        self.description = description
    }
    
}
