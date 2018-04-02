# Game Of Life

It's so much fun, every software engineer should create a _Game of Life_ once. This one uses Apple's SpriteKit as a frontend, the logic (`GameOfLifeCore`) is encapsuled in an Swift Package written TDD style, with a code coverage of 100% 🎉 I think a XCUITest on the frontend will be overkill...will it? I'll think about it 😅

![Screenshot](window.png)

The initial seed can be adjusted in `setupGameOfLife()` of `GameScene.swift`. I've commented out some gliders and spaceships.

# Rules

As described on [Wikipedia](https://en.wikipedia.org/wiki/Conway's_Game_of_Life)

- Any populated cell with fewer than 2 live neighbours becomes unpopulated because of underpopulation
- Any populated cell with more than 3 populated neighbours becomes unpopulated because of overpopulation
- Any populated cell with 2 or 3 live neighbours stays populated
- Any unpopulated cell with exactly 3 populated neighbors becomes populated
