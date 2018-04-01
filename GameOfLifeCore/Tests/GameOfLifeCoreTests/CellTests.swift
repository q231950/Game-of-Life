import XCTest
@testable import GameOfLifeCore

class CellTests: XCTestCase {

    let cell = Cell()
    
    func testCellHas8Neighbors() {
        XCTAssertEqual(cell.neighbors.count, 8, "A cell should have 8 neighbors")
    }

    func testCopy() {
        let cell = Cell(neighbors: [], populated: false)
        let cellCopy = cell.copy()
        XCTAssertEqual(cell, cellCopy)
    }

    func testCopyCopiesNeighbors() {
        let cell = Cell(neighbors: [Cell(), Cell()], populated: true)
        let cellCopy = cell.copy()
        XCTAssertEqual(cell, cellCopy)

        let cellCopyWithModifiedNeighbors = cell.copy()
        let populatedCell = Cell(populated: true)
        cell.neighbors[0] = populatedCell
        XCTAssertNotEqual(cell, cellCopyWithModifiedNeighbors)
    }

    func testCellIsUnpopulatedByDefault() {
        XCTAssertFalse(cell.populated, "A cell should be unpopulated by default")
    }

    func testEqualityWithSameNeighbors() {
        let populatedNeighbor = Cell(populated: true)
        cell.neighbors[1] = populatedNeighbor
        let neighbors = cell.neighbors
        let otherCell = Cell(neighbors: neighbors, populated: cell.populated)
        XCTAssertEqual(cell, otherCell)
    }

    func testInEqualityWithDifferentNeighbors() {
        let populatedNeighbor = Cell(populated: true)
        cell.neighbors[1] = populatedNeighbor
        let otherCell = Cell(populated: cell.populated)
        XCTAssertNotEqual(cell, otherCell)
    }

    func testEqualityOfPopulatedState() {
        cell.populated = true
        let otherCell = Cell(populated: true)
        XCTAssertEqual(cell, otherCell)
    }

    func testInEqualityOfPopulatedState() {
        let otherCell = Cell(populated: true)
        XCTAssertNotEqual(cell, otherCell)
    }

    func testHasThreePopulatedNeighbors() {
        let cellWithThreeNeighbors = Cell(neighbors: [Cell(populated: true), Cell(populated: true), Cell(populated: true)])
        XCTAssertTrue(cellWithThreeNeighbors.hasThreePopulatedNeighbors())
    }

    func testNotHasThreePopulatedNeighbors() {
        XCTAssertFalse(cell.hasThreePopulatedNeighbors())
    }
    
    static var allTests = [
        ("testCellHas8Neighbors", testCellHas8Neighbors),
        ("testCopy", testCopy),
        ("testCopyCopiesNeighbors", testCopyCopiesNeighbors),
        ("testCellIsUnpopulatedByDefault", testCellIsUnpopulatedByDefault),
        ("testEqualityWithSameNeighbors", testEqualityWithSameNeighbors),
        ("testInEqualityWithDifferentNeighbors", testInEqualityWithDifferentNeighbors),
        ("testEqualityOfPopulatedState", testEqualityOfPopulatedState),
        ("testInEqualityOfPopulatedState", testInEqualityOfPopulatedState),
        ]
}
