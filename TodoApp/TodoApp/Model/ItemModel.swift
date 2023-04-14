//
//  ItemModel.swift
//  TodoApp
//
//  Created by Rapipay on 10/04/23.
//

import Foundation
// Identifiable to be used in forEach statements, id is required
struct ItemModel: Identifiable, Codable {
//    codable: we can decode and encode this itemmodel into data and out of data
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    func updating() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
        
    }
}

