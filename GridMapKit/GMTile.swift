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
    var group: GMTileGroup
    var point: CGPoint
    
    public init(group: GMTileGroup, point: CGPoint) {
        self.group = group
        self.point = point
    }
}
