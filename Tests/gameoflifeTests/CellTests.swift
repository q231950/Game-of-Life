import XCTest
@testable import gameoflife

class CellTests: XCTestCase {

    let cell = Cell()
    
    func testCellHas8Neighbors() {
        XCTAssertEqual(cell.neighbors.count, 8, "A cell should have 8 neighbors")
    }

    func testCellIsUnpopulatedByDefault() {
        XCTAssertFalse(cell.populated, "A cell should be unpopulated by default")
    }
    
    static var allTests = [("testCellHas8Neighbors", testCellHas8Neighbors)]
}
