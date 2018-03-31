import XCTest
@testable import gameoflife

class CellControllerTests: XCTestCase {
    let cells = [Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell()]
    let cellController = CellController(width: 3, height: 3)

    func testAssignsTopLeftNeighborForSurroundedCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[0], cells[4].neighbors[0]!, "The top left neighbor of a cell should be assigned")
    }

    func testAssignsTopLeftNeighborForTopLeftMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[8], cells[0].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsTopLeftNeighborForLeftMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[2], cells[3].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned left most")
    }

    func testAssignsTopLeftNeighborForTopMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[6], cells[1].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned top  most")
    }

    func testAssignsTopLeftNeighborForTopRightMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[7], cells[2].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsTopLeftNeighborForRightMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[1], cells[5].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsTopLeftNeighborForBottomRightMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[4], cells[8].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsTopLeftNeighborForBottomMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[3], cells[7].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopLeftNeighborForBottomLeftMostCell() {
        cellController.assignNeighbors(to: cells)
        XCTAssertEqual(cells[5], cells[6].neighbors[0]!, "The top left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    /*
     XCTAssertEqual(cells[1], cells[4].neighbors[1]!, "The top center neighbor of a cell should be assigned")
     XCTAssertEqual(cells[2], cells[4].neighbors[2]!, "The top right neighbor of a cell should be assigned")
     XCTAssertEqual(cells[5], cells[4].neighbors[3]!, "The right neighbor of a cell should be assigned")
     */

}
