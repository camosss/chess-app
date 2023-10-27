//
//  PawnTests.swift
//  ChessGameTests
//
//  Created by 강호성 on 10/25/23.
//

import Foundation

import XCTest
@testable import ChessGame

final class PawnTests: XCTestCase {

    private var sut: ChessBoard!

    override func setUp() {
        sut = ChessBoard()
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    /// 체스말 종류별로 최대 개수와 비교
    func test_checkMaxPieceCount() {
        let blackPawnsCount = sut.board.flatMap { $0 }.filter { ($0 as? Pawn)?.color == .black }.count
        let whitePawnsCount = sut.board.flatMap { $0 }.filter { ($0 as? Pawn)?.color == .white }.count

        XCTAssertEqual(blackPawnsCount, Pawn(color: .black).maxCount)
        XCTAssertEqual(whitePawnsCount, Pawn(color: .white).maxCount)
    }
}
