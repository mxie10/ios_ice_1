import GameplayKit
import SpriteKit

class Island: GameObject {
    
    init()
    {
        super.init(imageString:"island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("")
    }
    
    override func Start() {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update() {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds() {
        if(position.y <= -876){
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 876
        let randomx:Int = (randomSource?.nextInt(upperBound: 626))!-313
        position.x = CGFloat(randomx)
        isColliding = false
    }
    
    func Move() {
        position.y -= verticalSpeed!
    }
}
