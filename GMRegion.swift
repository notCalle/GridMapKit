//
//  GMRegion.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-04.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit

//
// A GMRegion represents a layered rectangle of the world map
//
public class GMRegion: NSObject {
    var layers: [GMLayer] = []
    var offset: CGPoint
    var size: CGSize
    
    public init(offset: CGPoint, size: CGSize, maxdepth: Int) {
        self.offset = offset
        self.size = size
        self.layers.reserveCapacity(maxdepth)
        super.init()
    }
    
    func addLayer(_ layer: GMLayer, depth: Int) {
        self.layers.insert(layer, at: depth)
    }
}
