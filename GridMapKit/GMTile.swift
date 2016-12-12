//
//  GMTile.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-02.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import SpriteKit

public class GMTile: NSObject {
    var layer: GMLayer
    var point: vector_int2

    public convenience init(layer: GMLayer, x: Int, y: Int) {
        self.init(layer: layer, point: vector_int2(x: Int32(x), y: Int32(y)))
    }
    
    public init(layer: GMLayer, point: vector_int2) {
        self.layer = layer
        self.point = point
        super.init()
        layer.addTile(self, at: point)
    }
    
    public func exit(direction: GMDirection) -> GMTile? {
        return self.layer.tile(at: direction.point(relativeTo: self.point))
    }
}
