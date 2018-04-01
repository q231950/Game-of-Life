import XCTest
@testable import gameoflife

class GameoflifeTests: XCTestCase {
    
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
    
    func testGameOfLifeCellsHaveNeighbors() {
        let width = Int(arc4random_uniform(8)) + 2
        let height = Int(arc4random_uniform(8)) + 2
        let gameOfLife = GameOfLife(width:width, height:height)
        let cell = gameOfLife.cells[Int(arc4random_uniform(UInt32(width * height)))]
        let emptyNeighbors = cell.neighbors.filter({ (neighbor) -> Bool in
            return neighbor == nil
        })
        XCTAssertEqual(emptyNeighbors.count, 0, "Cells in Game of Life should not have empty neighbors")
    }

    func testGameOfLifeRows() {
        let gameOfLife = GameOfLife(width: 3, height: 4)
        let rows = gameOfLife.rows

        XCTAssertEqual(rows.count, 4)
        rows.forEach { (row) in
            XCTAssertEqual(row.count, 3)
        }
    }

    func testSeedSeeds() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed: [(1,2), (0,1)])
        XCTAssertTrue(gameOfLife.rows[2][1].populated, "The seed should populate the seeded cells")
        XCTAssertTrue(gameOfLife.rows[1][0].populated, "The seed should populate the seeded cells")
    }

    func testTickUpdatesCells() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(1,1)])
        let cells = gameOfLife.cells.map { (cell) -> Cell in
            return cell.copy()
        }
        gameOfLife.tick()
        XCTAssertNotEqual(cells, gameOfLife.cells, "A habitat with dying cells should update after a tick")
    }

    static var allTests = [
        ("testEmptyGameOfLifeHasNoCells", testEmptyGameOfLifeHasNoCells),
        ("testNonEmptyGameOfLifeShouldHaveCells", testNonEmptyGameOfLifeShouldHaveCells),
        ("testGameOfLifeHasCorrectNumberOfCells", testGameOfLifeHasCorrectNumberOfCells),
        ("testGameOfLifeRows", testGameOfLifeRows),
        ("testSeedSeeds", testSeedSeeds),
        ("testTickUpdatesCells", testTickUpdatesCells),
        ]
}
