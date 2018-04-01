import gameoflife 

let gameOfLife = GameOfLife(width: 20, height: 20, seed: [(1,1), (1,2), (1,3), (2,1)])
let gameOfLifeVisualRepresentation = ConsoleVisualRepresentation()
for _ in 0..<30 {
    gameOfLifeVisualRepresentation.draw(game: gameOfLife)
    gameOfLife.tick()
}
