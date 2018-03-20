//
//  ShuttlePlayer.swift
//  Crash it
//
//  Created by Olivier Picard on 18/03/2018.
//  Copyright © 2018 Olivier Picard. All rights reserved.
//

import Foundation
import SpriteKit

class ShuttlePlayer: Shuttle {
    
    init() {
        super.init(image: #imageLiteral(resourceName: "shuttle_1"),
                   color: UIColor.red,
                   stats: Shuttle.Stats(defense: 200, attack: 30,
                                         shootStats: Shuttle.Stats.ShootStats(deltaTimeToShoot: 1/4,
                                                                              probSuccessFire: 40)))
        super.direction = CGVector(dx: 0, dy: 0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
        if self.stats.shoot_stats.canShoot(currentTime) {
            shoot(direction: CGVector(dx: 0, dy: 1), rotation: self.zRotation)
        }
    }
    
    
    
}
