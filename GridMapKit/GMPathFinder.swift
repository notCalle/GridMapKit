//
//  GMPathFinder.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-07.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import GameplayKit

class GMPathFinder: NSObject {
    var agent: GMAgent
    var graph: GKGridGraph<GKGridGraphNode>
    
    public init(agent: GMAgent) {
        self.agent = agent
        graph = GKGridGraph(fromGridStartingAt: agent.position,
                            width: agent.region.size.x, height: agent.region.size.y,
                            diagonalsAllowed: true)
    }
    
    public func findPathTo(position: CGPoint) -> Array<CGPoint>? {
        return nil
    }
}
