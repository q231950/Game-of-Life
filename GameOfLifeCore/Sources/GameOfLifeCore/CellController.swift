import Foundation

struct CellController {
    let width: Int
    let height: Int

    // MARK: Seed Control

    func applySeed(_ seed: [(Int, Int)], to cells: [Cell]) {
        seed.forEach { (x: Int, y: Int) in
            let index = x + y * height
            cells[index].populated = true
        }
    }

    // MARK: Neighbor Control

    func assignNeighbors(to cells: [Cell]) {
        for (index, cell) in cells.enumerated() {
            cell.neighbors[0] = topLeftCell(for: index, cells: cells)
            cell.neighbors[1] = topCenterCell(for: index, cells: cells)
            cell.neighbors[2] = topRightCell(for: index, cells: cells)
            cell.neighbors[3] = rightCell(for: index, cells: cells)
            cell.neighbors[4] = bottomRightCell(for: index, cells: cells)
            cell.neighbors[5] = bottomCenterCell(for: index, cells: cells)
            cell.neighbors[6] = bottomLeftCell(for: index, cells: cells)
            cell.neighbors[7] = leftCell(for: index, cells: cells)
        }
    }

    private func cell(for index:Int, offset: Int, cells: [Cell]) -> Cell {
        var cellIndex = index + offset
        cellIndex = cellIndex >= 0 ? cellIndex : cells.count + cellIndex
        cellIndex = cellIndex < cells.count ? cellIndex : cellIndex % width
        return cells[cellIndex]
    }

    private func topLeftCell(for index:Int, cells: [Cell]) -> Cell {
        if index % width == 0 {
            return cell(for: index, offset: -1, cells: cells)
        }
        return cell(for: index, offset: -width - 1, cells: cells)
    }

    private func topCenterCell(for index:Int, cells: [Cell]) -> Cell {
        return cell(for: index, offset: -width, cells: cells)
    }

    private func topRightCell(for index:Int, cells: [Cell]) -> Cell {
        if (index + 1) % width == 0 {
            return cell(for: index, offset: -(2 * width) + 1, cells: cells)
        }
        return cell(for: index, offset: -width + 1, cells: cells)
    }

    private func rightCell(for index:Int, cells: [Cell]) -> Cell {
        if (index + 1) % width == 0 {
            return cell(for: index, offset: -width + 1, cells: cells)
        }
        return cell(for: index, offset: 1, cells: cells)
    }

    private func bottomRightCell(for index:Int, cells: [Cell]) -> Cell {
        if (index + 1) % width == 0 {
            return cell(for: index, offset: 1, cells: cells)
        }
        return cell(for: index, offset: width + 1, cells: cells)
    }

    private func bottomCenterCell(for index:Int, cells: [Cell]) -> Cell {
        return cell(for: index, offset: width, cells: cells)
    }

    private func bottomLeftCell(for index:Int, cells: [Cell]) -> Cell {
        if index % width == 0 {
            return cell(for: index, offset: (2 * width) - 1, cells: cells)
        }
        return cell(for: index, offset: width - 1, cells: cells)
    }

    private func leftCell(for index:Int, cells: [Cell]) -> Cell {
        if index % width == 0 {
            return cell(for: index, offset: width - 1, cells: cells)
        }
        return cell(for: index, offset: -1, cells: cells)
    }

}
