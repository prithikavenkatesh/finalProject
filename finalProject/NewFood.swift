//
//  NewFood.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()

    let title: String
    
    init(title: String) {
        self.title = title
    }
}
