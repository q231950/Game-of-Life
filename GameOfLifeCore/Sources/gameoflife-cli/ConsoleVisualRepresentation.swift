import Foundation
import GameOfLifeCore

class ConsoleVisualRepresentation {

    let animals = ["🐸", "🦁", "🐯", "🐴", "🦗", "🦋", "🐨", "🐹", "🐶", "🐼"]

    func draw(game: GameOfLife) {

        for row in game.rows {
            row.forEach { (cell) in
                print(cell.populated ? randomAnimal() : "🌊", terminator: "")
            }
            print("", terminator: "\n")
        }

    }

    private func randomAnimal() -> String {
        let random = arc4random_uniform(UInt32(animals.count))
        return animals[Int(random)]
    }

}
