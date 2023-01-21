//
//  GameObject.swift
//  ICE-1B
//
//  Created by Mingyuan Xie on 1/18/23.
//

import Foundation
import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode, GameProtocol
{
    var horizontalSpeed: CGFloat?
    var verticalSpeed: CGFloat?
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth:CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource: GKRandomSource?
    var randomDist: GKRandomDistribution?
    
    init(imageString: String, initialScale: CGFloat)
    {
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size:texture.size())
        
        //configuration
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("")
    }
    
    //Lifecycle functions
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    func CheckBounds() {
        
    }
    
    func Reset() {
        
    }
    
}
