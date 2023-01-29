import GameplayKit
import SpriteKit

class Cloud: GameObject {
    
    init()
    {
        super.init(imageString:"cloud", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("")
    }
    
    override func Start() {
        zPosition = Layer.cloud.rawValue
        alpha = 5.0 // 50% transparent
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
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0
        
        let randomx:Int = (randomSource?.nextInt(upperBound: 524))!-262
        position.x = CGFloat(randomx)
        let randomy:Int = (randomSource?.nextInt(upperBound: 30))!+902
        position.y = CGFloat(randomy)
        isColliding = false
    }
    
    func Move() {
        position.x -= horizontalSpeed!
        position.y -= verticalSpeed!
    }
}

