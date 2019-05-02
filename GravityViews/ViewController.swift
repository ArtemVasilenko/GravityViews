
import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ball = Ball(dataBall: DataBall(maxX: Int(self.view.bounds.size.width), maxY: Int(self.view.bounds.size.height)))
        self.view.addSubview(ball)
        
        let ball1 = Ball(dataBall: DataBall(maxX: Int(self.view.bounds.size.width), maxY: Int(self.view.bounds.size.height)))
        self.view.addSubview(ball1)
        
        let ball2 = Ball(dataBall: DataBall(maxX: Int(self.view.bounds.size.width), maxY: Int(self.view.bounds.size.height)))
        self.view.addSubview(ball2)
        
    }


}

