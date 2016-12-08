//
//  GMRegion.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-04.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import GameplayKit

//
// A GMRegion represents a layered rectangle of the world map
//
public class GMRegion: NSObject {
    var layers: [GMLayer?]
    var offset: vector_int2
    var size: vector_int2

    public convenience init(x: Int, y: Int, w: Int, h: Int, layers: Int) {
        self.init(offset: vector_int2(x: Int32(x), y: Int32(y)),
                  size: vector_int2(x: Int32(w), y: Int32(h)),
                  layers: layers)
    }
    
    public init(offset: vector_int2, size: vector_int2, layers: Int) {
        self.offset = offset
        self.size = size
        self.layers = Array<GMLayer?>(repeating: nil, count: layers)
        super.init()
    }
    
    func addLayer(_ layer: GMLayer, depth: Int) {
        self.layers.insert(layer, at: depth)
    }
}
