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

    public init(layer: GMLayer, point: CGPoint) {
        self.layer = layer
        super.init()
        layer.addTile(self, at: point)
    }
}
