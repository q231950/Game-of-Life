import XCTest
@testable import gameoflife

class gameoflifeTests: XCTestCase {
    func testGameOfLifeHasCells() {
      let gameOfLife = GameOfLife()
        XCTAssertTrue(gameOfLife.cells.count > 0, "Game Of Life should have Cells")
    }

    static var allTests = [
        ("testGameOfLifeHasCells", testGameOfLifeHasCells),
    ]
}
