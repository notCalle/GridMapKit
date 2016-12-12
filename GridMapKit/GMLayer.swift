//
//  GMLayer.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-04.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import GameplayKit

//
// A GMLayer represents a rectangle of GMTile:s, beloning to a GMRegion
//
public class GMLayer: NSObject {
    var region: GMRegion
    var depth: Int
    var tiles:[GMTile?]

    public init(region: GMRegion, depth: Int) {
        self.region = region
        self.depth = depth
        self.tiles = Array<GMTile?>(repeating: nil, count: Int(region.size.x) * Int(region.size.y))
        super.init()
        region.addLayer(self, depth: depth)
    }
    
    private func index(at point: vector_int2) -> Int {
        return Int(point.x) + Int(point.y) * Int(region.size.x)
    }
    
    func addTile(_ tile: GMTile, at point: vector_int2) {
        tiles.insert(tile, at: self.index(at: point))
    }
    
    public func tile(at point: vector_int2) -> GMTile? {
        let index = self.index(at: point)
        if (index >= self.tiles.startIndex && index < self.tiles.endIndex) {
            return tiles[self.index(at: point)]
        } else {
            return nil
        }
    }
}
