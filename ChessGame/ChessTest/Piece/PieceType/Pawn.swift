//
//  Pawn.swift
//  ChessGame
//
//  Created by 강호성 on 10/25/23.
//

import Foundation

struct Pawn: Piece {
    var icon: String
    var color: Color
    let maxCount: Int
    var score: Int

    init(color: Color) {
        self.color = color
        icon = color == .black ? "♟" : "♙"
        maxCount = 8
        score = 0
    }
}