
import UIKit

struct DataBall {
    var maxY: Int
    var maxX: Int
    
    init(maxX: Int, maxY: Int) {
        self.maxX = maxX
        self.maxY = maxY
    }
}

class Ball: UIView {
    
    var maxY: Int!
    var maxX: Int!
    
    init(dataBall: DataBall) {
        self.maxX = dataBall.maxX
        self.maxY = dataBall.maxY
        
        super.init(frame: CGRect())
        self.frame = CGRect(x: Int.random(in: 0...maxX), y: Int.random(in: 0...maxY), width: Int.random(in: 1...50), height: Int.random(in: 1...50))
        
        self.layer.cornerRadius = (self.bounds.size.width * self.bounds.size.height).squareRoot()
        //корень квадратный
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.rndColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension UIColor {
    
   static func rndColor() -> UIColor {
        let color: UIColor
        
        color = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return color
    }
    
    
}
