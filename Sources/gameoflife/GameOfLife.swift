public class GameOfLife {

  let cells: [Cell]

  public init(width: Int = 0, height: Int = 0) {
    cells = GameOfLife.generateCells(width: width, height: height)
    let cellController = CellController(width:width, height:height)
    cellController.assignNeighbors(to: cells)
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

  public func tick() {
    print("Game of Life.")
  }
}
