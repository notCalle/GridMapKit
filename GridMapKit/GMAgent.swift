//
//  GMAgent.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-08.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit

class GMAgent: NSObject {
    var region: GMRegion
    var position: CGPoint
    var layers: CountableRange<Int>

    public init(region: GMRegion, position: CGPoint, layers: CountableRange<Int>) {
        self.region = region
        self.position = position
        self.layers = layers
    }
}
