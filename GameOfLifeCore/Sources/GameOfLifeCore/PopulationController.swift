import Foundation

class PopulationController {
    func populate(cells: [Cell]) -> [Cell] {
        return cells.map({ (cell) -> Cell in
            let cellCopy = cell.copy()
            cellCopy.populated = shouldBePopulated(cell)
            return cellCopy
        })
    }

    private func shouldBePopulated(_ cell: Cell) -> Bool {
        guard cell.hasLessThanOrEqualToThreePopulatedNeighbors() else {
            return false
        }

        if cell.populated {
            return cell.hasTwoOrThreePopulatedNeighbors()
        }

        return cell.hasThreePopulatedNeighbors()
    }
}
