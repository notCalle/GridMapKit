//
//  GMLayer.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-04.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit

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
        self.tiles = Array<GMTile?>(repeating: nil, count: Int(region.size.width) * Int(region.size.height))
        super.init()
        region.addLayer(self, depth: depth)
    }
    
    private func index(at: CGPoint) -> Int {
        return Int(at.x) + Int(at.y) * Int(region.size.width)
    }
    
    func addTile(_ tile: GMTile, at: CGPoint) {
        tiles.insert(tile, at: self.index(at: at))
    }
    
    public func tile(at: CGPoint) -> GMTile? {
        let index = self.index(at: at)
        if (index >= self.tiles.startIndex && index < self.tiles.endIndex) {
            return tiles[self.index(at: at)]
        } else {
            return nil
        }
    }
}
