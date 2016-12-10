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
        graph = GKGridGraph(fromGridStartingAt: vector_int2(0, 0),
                            width: agent.region.size.x, height: agent.region.size.y,
                            diagonalsAllowed: true)
        let region = agent.region
        for y in 0..<region.size.y {
            for x in 0..<region.size.x {
                if region.layers[0]!.tile(at: vector_int2(x, y)) != nil {
                    graph.connectToAdjacentNodes(node: GKGridGraphNode(gridPosition: vector_int2(x, y)))
                }
            }
        }
    }
    
    public func findPath(to position: vector_int2) -> [GKGridGraphNode] {
        let start = self.graph.node(atGridPosition: self.agent.position)
        let target = self.graph.node(atGridPosition: position)
        
        return self.graph.findPath(from: start!, to: target!) as! [GKGridGraphNode]
    }
}
