//
//  Player.swift
//  ICE-1B
//
//  Created by Mingyuan Xie on 1/18/23.
//

import GameplayKit
import SpriteKit

class Player: GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("")
    }
    
    override func Start()
    {
        zPosition = 2
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //constriant the player on the left boundary
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    
    override func Reset()
    {
        position.y = -495
    }
    
    func TouchMove(newPros: CGPoint) {
        position = newPros
    }
}

