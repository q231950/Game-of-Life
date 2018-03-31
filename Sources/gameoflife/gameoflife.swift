
public class GameOfLife {

  let cells: [Cell]

  public init() {
    cells = GameOfLife.generateCells()
  }

  static func generateCells() -> [Cell] {
    return [Cell]()
  }

  public func run() {
    print("Game of Life.") 
  }
}
