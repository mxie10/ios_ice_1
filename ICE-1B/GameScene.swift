//
//  GameScene.swift
//  ICE-1B
//
//  Created by Mingyuan Xie on 1/18/23.
//

import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene
{
    //instance variables
    var ocean1: Ocean?
    var ocean2: Ocean?
    var player: Player?
    
    override func sceneDidLoad()
    {
        screenWidth = frame.width
        screenHeight = frame.height
        
        name = "GAME"
        
        //add the ocean to the Scene
        ocean1 = Ocean()
        ocean1?.Reset()
        addChild(ocean1!)
        
        //add the second ocean
        ocean2 = Ocean()
        ocean2?.position.y = -733
        addChild(ocean2!)
        
        //add the player to the scene
        player = Player()
        player?.Reset()
        addChild(player!)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        player?.TouchMove(newPros: CGPoint(x:pos.x,y:-495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        player?.TouchMove(newPros: CGPoint(x:pos.x,y:-495))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        player?.TouchMove(newPros: CGPoint(x:pos.x,y:-495))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func update(_ currentTime: TimeInterval)
    {
        ocean1?.Update()
        ocean2?.Update()
        player?.Update()
    }
}
