import XCTest
@testable import gameoflife

class PopulationControllerTests: XCTestCase {

    func testPopulationControllerDoesNotModifyCellsInPlace() {
        let populationController = PopulationController()
        let cells:[Cell] = [Cell(), Cell(), Cell(), Cell()]
        let updatedCells = populationController.populate(cells: cells)
        for (index, cell) in cells.enumerated() {
            XCTAssertTrue(cell !== updatedCells[index])
        }
    }

    func testUnpupolatesPopulatedCellWithFewerThanTwoPopulatedNeighbors() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(0,0)])
        gameOfLife.cells[4].populated = true
        let populationController = PopulationController()
        let updatedCells = populationController.populate(cells: gameOfLife.cells)
        XCTAssertFalse(updatedCells[4].populated, "A populated cell with fewer than two neighbors should become unpopulated")
    }

    func testUnpopulatesPopulatedCellsWithMoreThanThreeNeighbors() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(0,0), (0,1), (0,2), (1,0)])
        gameOfLife.cells[4].populated = true
        let populationController = PopulationController()
        let updatedCells = populationController.populate(cells: gameOfLife.cells)
        XCTAssertFalse(updatedCells[4].populated, "A populated cell with more than three neighbors should become unpopulated")
    }

    func testCellWithTwoPopulatedNeighborsStaysPopulated() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(0,0), (0,1)])
        gameOfLife.cells[4].populated = true
        let populationController = PopulationController()
        let updatedCells = populationController.populate(cells: gameOfLife.cells)
        XCTAssertTrue(updatedCells[4].populated, "A populated cell with exactly two neighbors should stay populated")
    }

    func testCellWithThreePopulatedNeighborsStaysPopulated() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(0,0), (0,1), (2,2)])
        gameOfLife.cells[4].populated = true
        let populationController = PopulationController()
        let updatedCells = populationController.populate(cells: gameOfLife.cells)
        XCTAssertTrue(updatedCells[4].populated, "A populated cell with exactly two neighbors should stay populated")
    }

    func testPopulatesUnpopulatedCellsWithExactlyThreeNeighbors() {
        let gameOfLife = GameOfLife(width: 3, height: 3, seed:[(0,0), (0,1), (0,2)])
        let populationController = PopulationController()
        let updatedCells = populationController.populate(cells: gameOfLife.cells)
        XCTAssertTrue(updatedCells[4].populated, "An unpopulated cell with exactly three neighbors should be populated")
    }


    static var allTests = [
        ("testPopulationControllerDoesNotModifyCellsInPlace", testPopulationControllerDoesNotModifyCellsInPlace),
        ("testUnpupolatesPopulatedCellWithFewerThanTwoPopulatedNeighbors", testUnpupolatesPopulatedCellWithFewerThanTwoPopulatedNeighbors),
        ("testUnpopulatesPopulatedCellsWithMoreThanThreeNeighbors", testUnpopulatesPopulatedCellsWithMoreThanThreeNeighbors),
        ("testCellWithTwoPopulatedNeighborsStaysPopulated", testCellWithTwoPopulatedNeighborsStaysPopulated),
        ("testCellWithThreePopulatedNeighborsStaysPopulated", testCellWithThreePopulatedNeighborsStaysPopulated),
        ("testPopulatesUnpopulatedCellsWithExactlyThreeNeighbors", testPopulatesUnpopulatedCellsWithExactlyThreeNeighbors),
    ]
}
