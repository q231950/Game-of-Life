import Foundation
import GameOfLifeCore

let gameOfLife = GameOfLife(width: 80, height: 80, seed: [
    (10,15),
    (11,16),
    (12,14),(12,15),(12,16),

    (20,25),
    (21,26),
    (22,24),(22,25),(22,26),

    (50,37),(50,38),(50,39),(50,40),(50,41),(50,42),(50,43),(50,44),
    (50,46),(50,47),(50,48),(50,49),(50,50),
    (50,54),(50,55),(50,56),
    (50,63),(50,64),(50,65),(50,66),(50,67),(50,68),(50,69),
    (50,71),(50,72),(50,73),(50,74),(50,75)
    ])
let gameOfLifeVisualRepresentation = ConsoleVisualRepresentation()
while true {
    gameOfLifeVisualRepresentation.draw(game: gameOfLife)
    gameOfLife.tick()
    Thread.sleep(forTimeInterval: 0.5)
}
