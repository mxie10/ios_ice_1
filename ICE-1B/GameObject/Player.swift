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
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("")
    }
    
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //constriant the player on the left boundary
        if(position.x <= -320)
        {
            position.x = -320
        }
        
        if(position.x >= 320){
            position.x = 320
        }
    }
    
    
    override func Reset()
    {
        position.y = -520
    }
    
    func TouchMove(newPros: CGPoint) {
        position = newPros
    }
}

