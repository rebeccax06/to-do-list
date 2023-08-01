//
//  ToDoItem.swift
//  to do list
//
//  Created by Scholar on 8/1/23.
//

import Foundation

class ToDoItem: Identifiable{
    var id = UUID()
    var title: String
    var isImportant : Bool
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
