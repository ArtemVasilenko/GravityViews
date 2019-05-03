
import UIKit

//Interactor - посредник между работником и ведущим
struct DataBall {
    var maxY: Int
    var maxX: Int
    
    init(maxX: Int, maxY: Int) {
        self.maxX = maxX
        self.maxY = maxY
    }
}

//Presenter
class Ball: UIView {
    
    var maxY: Int!
    var maxX: Int!
    
    init(_ dataBall: DataBall) {
        super.init(frame: CGRect())
        self.maxX = dataBall.maxX
        self.maxY = dataBall.maxY
        
        self.frame = CGRect(x: Int.random(in: 0...maxX),
                            y: Int.random(in: 0...maxY),
                            width: Int.random(in: 1...50),
                            height: Int.random(in: 1...50))
        
        self.layer.cornerRadius = (self.bounds.size.width * self.bounds.size.height).squareRoot() / 2 //корень квадратный
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
