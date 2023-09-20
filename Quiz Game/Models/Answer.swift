//
//  Answer.swift
//  Quiz Game
//
//  Created by kuetcse on 17/9/23.
//

import Foundation

struct Answer: Identifiable{
    var id=UUID()
    var text: AttributedString
    var isCorrect: Bool
}
