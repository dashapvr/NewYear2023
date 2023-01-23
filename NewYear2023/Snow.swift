//
//  Snow.swift
//  NewYear2023
//
//  Created by Дарья Пивовар on 23.01.2023.
//

import SpriteKit

class Snow: SKScene {
    override func sceneDidLoad() {
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        backgroundColor = .clear
        
        anchorPoint = .init(x: 0.5, y: 1)
        let node = SKEmitterNode.init(fileNamed: "snow.sks")
        addChild(node!)
        node?.particlePositionRange.dx = UIScreen.main.bounds.width
    }
}

