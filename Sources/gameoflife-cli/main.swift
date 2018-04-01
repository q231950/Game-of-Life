import gameoflife 

let gameOfLife = GameOfLife(width: 30, height: 30)
let gameOfLifeVisualRepresentation = ConsoleVisualRepresentation()
for _ in 0..<10 {
    gameOfLife.tick()
    gameOfLifeVisualRepresentation.draw(game: gameOfLife)
}

