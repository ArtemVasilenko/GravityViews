import UIKit

//builder
protocol GetBalls {
    func getBalls(_ dataBall: DataBall) -> [Ball]
}

extension GetBalls {
    
    func getBalls(_ dataBall: DataBall) -> [Ball] {
        var balls = [Ball]()
        for _ in 5...Int.random(in: 5...15) {
           balls.append(Ball(dataBall))
        }
        return balls
    }
}


