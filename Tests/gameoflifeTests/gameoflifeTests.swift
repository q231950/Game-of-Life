import XCTest
@testable import gameoflife

class gameoflifeTests: XCTestCase {
  func testEmptyGameOfLifeHasNoCells() {
    let gameOfLife = GameOfLife()
    XCTAssertEqual(gameOfLife.cells.count, 0, "An empty Game Of Life should have 0 cells")
  }

  func testNonEmptyGameOfLifeShouldHaveCells() {
    let width = Int(arc4random_uniform(9)) + 1
    let height = Int(arc4random_uniform(9)) + 1
    let gameOfLife = GameOfLife(width:width, height:height)
    XCTAssertTrue(gameOfLife.cells.count > 0, "A Game of Life with at least one row and column should have more than zero cells")
  }

  func testGameOfLifeHasCorrectNumberOfCells() {
    let gameOfLife = GameOfLife(width:20, height:10)
    XCTAssertEqual(gameOfLife.cells.count, 200, "The number of cells should be according to the given size of the habitat")
  }

  static var allTests = [
    ("testEmptyGameOfLifeHasNoCells", testEmptyGameOfLifeHasNoCells),
    ("testNonEmptyGameOfLifeShouldHaveCells", testNonEmptyGameOfLifeShouldHaveCells),
    ("testGameOfLifeHasCorrectNumberOfCells", testGameOfLifeHasCorrectNumberOfCells),
  ]
}
