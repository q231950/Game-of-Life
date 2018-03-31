import XCTest
@testable import gameoflife

class CellTests: XCTestCase {

    func testCellHas8Neighbors() {
        let cell = Cell()
        XCTAssertEqual(cell.neighbors.count, 8, "A cell should have 8 neighbors")
    }

    static var allTests = [("testCellHas8Neighbors", testCellHas8Neighbors)]
}
