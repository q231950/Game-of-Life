//
//  GameScene.swift
//  GameOfLife
//
//  Created by Martin Kim Dung-Pham on 01.04.18.
//  Copyright © 2018 elbedev.com. All rights reserved.
//

import SpriteKit
import GameplayKit
import GameOfLifeCore

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    private var lastTimeStamp: Int = 0
    private var gameOfLife: GameOfLife!
    private var cells = [SKShapeNode]()
    private let margin = CGFloat(2)

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupGameOfLife()
        setupGrid()
    }

    private func setupGameOfLife() {
        gameOfLife = GameOfLife(width: 50, height: 50, seed: [
            (10,11), (10,12), (10,13),
            (11,12), (11,13), (11,14),

            (10,25),
            (11,26),
            (12,24),(12,25),(12,26),

            (20,27),
            (21,28),
            (22,26),(22,27),(22,28),

            (0,27),
            (1,28),
            (2,26),(2,27),(2,28),

            (30,20),(30,21),
            (31,18),(31,19),(31,21),(31,22),
            (32,18),(32,19),(32,20),(32,21),
            (33,19),(33,20),

            (40,30),(40,31),
            (41,28),(41,29),(41,31),(41,32),
            (42,28),(42,29),(42,30),(42,31),
            (43,29),(43,30),
            ])
    }

    private func tick() {
        gameOfLife.tick()
        for (index, node) in cells.enumerated() {
            let cell = gameOfLife.cells[index]
            node.strokeColor = cell.populated ? SKColor.cyan : SKColor.darkGray
            node.lineWidth = cell.populated ? 2 : 1
        }
    }

    private func setupGrid() {
        let w = (self.size.height - CGFloat(gameOfLife.height) * margin) / CGFloat(gameOfLife.height)
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 1
        }

        for y in 0..<gameOfLife.height {
            for x in 0..<gameOfLife.width {
                if let n = self.spinnyNode?.copy() as! SKShapeNode? {
                    n.position = CGPoint(x: CGFloat(x) * w - w/2 + CGFloat(x) * margin - self.size.width/2, y: CGFloat(y) * w - w/2 + CGFloat(y) * margin - self.size.height/2)
                    self.addChild(n)
                    cells.append(n)
                }
            }
        }
    }

    override func update(_ currentTime: TimeInterval) {
        tick()
        if Int(currentTime) != lastTimeStamp {
            lastTimeStamp = Int(currentTime)
        }
    }
}
