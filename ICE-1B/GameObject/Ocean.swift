//
//  Ocean.swift
//  ICE-1B
//
//  Created by Mingyuan Xie on 1/18/23.
//

import GameplayKit
import SpriteKit

class Ocean:GameObject
{
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.y <= -2253)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.y = 2253
    }
    
    func Move()
    {
        position.y -= verticalSpeed!
    }
}
