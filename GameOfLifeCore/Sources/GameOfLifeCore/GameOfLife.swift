import Foundation

public class GameOfLife {

    public var rows: [[Cell]] {
        let end = cells.endIndex
        let indexes = stride(from: 0, to: cells.count, by: width)
        return indexes.map {
            let chunkEnd = cells.index($0, offsetBy: width, limitedBy: end) ?? end
            return Array(cells[$0..<chunkEnd])
        }
    }
    public let width: Int
    public let height: Int
    public var cells: [Cell]

    public init(width: Int = 0, height: Int = 0, seed: [(Int, Int)] = []) {
        self.width = width
        self.height = height
        cells = GameOfLife.generateCells(width: width, height: height)
        let cellController = CellController(width:width, height:height)
        cellController.assignNeighbors(to: cells)
        cellController.applySeed(seed, to: cells)
    }

    static func generateCells(width: Int, height: Int) -> [Cell] {
        var cells = [Cell]()
        for _ in 0..<width {
            for _ in 0..<height {
                let cell = Cell()
                cells.append(cell)
            }
        }
        return cells
    }

    public func cell(x: Int, y: Int) -> Cell? {
        return cells[x + y * height]
    }

    public func tick() {
        let populationController = PopulationController()
        cells = populationController.populate(cells: cells)

        let cellController = CellController(width:width, height:height)
        cellController.assignNeighbors(to: cells)
    }
}
