import GameOfLifeCore

class ConsoleVisualRepresentation {

    func draw(game: GameOfLife) {

        for row in game.rows {
            row.forEach { (cell) in
                print(cell.populated ? "🌎" : "🔥", terminator: "")
            }
            print("", terminator: "\n")
        }

    }

}
