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
    var tiles:[[GMTile]] = [[]]

    public init(region: GMRegion, depth: Int) {
        self.region = region
        self.depth = depth
        super.init()
        region.addLayer(self, depth: depth)
    }
    
    func addTile(_ tile: GMTile, at:CGPoint) {
        tiles[Int(at.x)][Int(at.y)] = tile
    }
}
