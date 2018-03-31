import XCTest
@testable import gameoflife

class gameoflifeTests: XCTestCase {
  func testGameOfLifeHasCells() {
    let gameOfLife = GameOfLife()
    XCTAssertTrue(gameOfLife.cells.count > 0, "Game Of Life should have cells")
  }

  func testGameOfLifeHasCorrectNumberOfCells() {
    let gameOfLife = GameOfLife(width:20, height:10)
    XCTAssertEqual(gameOfLife.cells.count, 200, "The number of cells should be according to the given size of the habitat")
  }

  static var allTests = [
    ("testGameOfLifeHasCells", testGameOfLifeHasCells),
    ("testGameOfLifeHasCorrectNumberOfCells", testGameOfLifeHasCorrectNumberOfCells),
  ]
}
