
import UIKit

class ViewController: UIViewController, GetBalls {
    var arrVcs = [Ball]()
    var dataBall: DataBall!
    
    var animator = UIDynamicAnimator()
    var collision = UICollisionBehavior()
    var gravity = UIGravityBehavior()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataBall = DataBall(maxX: Int(self.view.frame.maxX), maxY: Int(self.view.frame.maxY))
        
        arrVcs += getBalls(dataBall)
        
        arrVcs.forEach {
            self.view.addSubview($0)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior(items: arrVcs)
        collision = UICollisionBehavior(items: arrVcs)
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        
    }
}

