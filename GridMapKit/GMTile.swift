//
//  GMTile.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-02.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import SpriteKit

class GMTile: NSObject {
    var group: GMTileGroup
    var point: CGPoint
    
    init(group: GMTileGroup, point: CGPoint) throws {
        if !group.extent.contains(point) {
            throw GMError.outsideParentExtent
        }
        self.group = group
        self.point = point
    }
}
