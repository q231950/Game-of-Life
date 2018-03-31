import XCTest
@testable import gameoflife

class CellControllerTests: XCTestCase {
    let cells = [Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell()]
    let cellController = CellController(width: 3, height: 3)

    override func setUp() {
        cellController.assignNeighbors(to: cells)
    }

    // MARK: Top Left

    func testAssignsTopLeftNeighborForSurroundedCell() {
        XCTAssertEqual(cells[0], cells[4].topLeftNeighbor, "The top left neighbor of a cell should be assigned")
    }

    func testAssignsTopLeftNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[8], cells[0].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsTopLeftNeighborForTopMostCell() {
        XCTAssertEqual(cells[6], cells[1].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsTopLeftNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[7], cells[2].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsTopLeftNeighborForRightMostCell() {
        XCTAssertEqual(cells[1], cells[5].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsTopLeftNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[4], cells[8].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsTopLeftNeighborForBottomMostCell() {
        XCTAssertEqual(cells[3], cells[7].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopLeftNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[5], cells[6].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopLeftNeighborForLeftMostCell() {
        XCTAssertEqual(cells[2], cells[3].topLeftNeighbor, "The top left neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Top Center

    func testAssignsTopCenterNeighborForSurroundedCell() {
        XCTAssertEqual(cells[1], cells[4].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsTopCenterNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[6], cells[0].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsTopCenterNeighborForTopMostCell() {
        XCTAssertEqual(cells[7], cells[1].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsTopCenterNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[8], cells[2].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsTopCenterNeighborForRightMostCell() {
        XCTAssertEqual(cells[2], cells[5].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsTopCenterNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[5], cells[8].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsTopCenterNeighborForBottomMostCell() {
        XCTAssertEqual(cells[4], cells[7].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopCenterNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[3], cells[6].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopCenterNeighborForLeftMostCell() {
        XCTAssertEqual(cells[0], cells[3].topCenterNeighbor, "The top center neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Top Right

    func testAssignsTopRightNeighborForSurroundedCell() {
        XCTAssertEqual(cells[2], cells[4].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsTopRightNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[7], cells[0].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsTopRightNeighborForTopMostCell() {
        XCTAssertEqual(cells[8], cells[1].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsTopRightNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[6], cells[2].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsTopRightNeighborForRightMostCell() {
        XCTAssertEqual(cells[0], cells[5].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsTopRightNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[3], cells[8].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsTopRightNeighborForBottomMostCell() {
        XCTAssertEqual(cells[5], cells[7].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopRightNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[4], cells[6].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsTopRightNeighborForLeftMostCell() {
        XCTAssertEqual(cells[1], cells[3].topRightNeighbor, "The top right neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Right

    func testAssignsRightNeighborForSurroundedCell() {
        XCTAssertEqual(cells[5], cells[4].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsRightNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[1], cells[0].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsRightNeighborForTopMostCell() {
        XCTAssertEqual(cells[2], cells[1].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsRightNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[0], cells[2].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsRightNeighborForRightMostCell() {
        XCTAssertEqual(cells[3], cells[5].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsRightNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[6], cells[8].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsRightNeighborForBottomMostCell() {
        XCTAssertEqual(cells[8], cells[7].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsRightNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[7], cells[6].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsRightNeighborForLeftMostCell() {
        XCTAssertEqual(cells[4], cells[3].rightNeighbor, "The right neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Bottom Right

    func testAssignsBottomRightNeighborForSurroundedCell() {
        XCTAssertEqual(cells[8], cells[4].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsBottomRightNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[4], cells[0].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsBottomRightNeighborForTopMostCell() {
        XCTAssertEqual(cells[5], cells[1].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsBottomRightNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[3], cells[2].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsBottomRightNeighborForRightMostCell() {
        XCTAssertEqual(cells[6], cells[5].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsBottomRightNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[0], cells[8].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsBottomRightNeighborForBottomMostCell() {
        XCTAssertEqual(cells[2], cells[7].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomRightNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[1], cells[6].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomRightNeighborForLeftMostCell() {
        XCTAssertEqual(cells[7], cells[3].bottomRightNeighbor, "The bottom right neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Bottom Center

    func testAssignsBottomCenterNeighborForSurroundedCell() {
        XCTAssertEqual(cells[7], cells[4].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsBottomCenterNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[3], cells[0].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsBottomCenterNeighborForTopMostCell() {
        XCTAssertEqual(cells[4], cells[1].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsBottomCenterNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[5], cells[2].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsBottomCenterNeighborForRightMostCell() {
        XCTAssertEqual(cells[8], cells[5].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsBottomCenterNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[2], cells[8].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsBottomCenterNeighborForBottomMostCell() {
        XCTAssertEqual(cells[1], cells[7].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomCenterNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[0], cells[6].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomCenterNeighborForLeftMostCell() {
        XCTAssertEqual(cells[6], cells[3].bottomCenterNeighbor, "The bottom center neighbor of a cell should be assigned for cells which are aligned left most")
    }

    // MARK: Bottom Left

    func testAssignsBottomLeftNeighborForSurroundedCell() {
        XCTAssertEqual(cells[6], cells[4].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are surrounded by other cells")
    }

    func testAssignsBottomLeftNeighborForTopLeftMostCell() {
        XCTAssertEqual(cells[5], cells[0].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned top and left most")
    }

    func testAssignsBottomLeftNeighborForTopMostCell() {
        XCTAssertEqual(cells[3], cells[1].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned top most")
    }

    func testAssignsBottomLeftNeighborForTopRightMostCell() {
        XCTAssertEqual(cells[4], cells[2].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned right and top most")
    }

    func testAssignsBottomLeftNeighborForRightMostCell() {
        XCTAssertEqual(cells[7], cells[5].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned right most")
    }

    func testAssignsBottomLeftNeighborForBottomRightMostCell() {
        XCTAssertEqual(cells[1], cells[8].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned right and bottom most")
    }

    func testAssignsBottomLeftNeighborForBottomMostCell() {
        XCTAssertEqual(cells[0], cells[7].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomLeftNeighborForBottomLeftMostCell() {
        XCTAssertEqual(cells[2], cells[6].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned bottom most")
    }

    func testAssignsBottomLeftNeighborForLeftMostCell() {
        XCTAssertEqual(cells[8], cells[3].bottomLeftNeighbor, "The bottom left neighbor of a cell should be assigned for cells which are aligned left most")
    }
}


