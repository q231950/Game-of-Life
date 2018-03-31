
public class GameOfLife {

  let cells: [Cell]

  public init(width: Int = 0, height: Int = 0) {
    cells = GameOfLife.generateCells()
  }

  static func generateCells() -> [Cell] {
    return [Cell()]
  }

  public func run() {
    print("Game of Life.")
  }
}
