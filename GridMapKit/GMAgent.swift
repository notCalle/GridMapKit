//
//  GMAgent.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-08.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit
import GameplayKit

class GMAgent: NSObject {
    var region: GMRegion
    var position: vector_int2
    var layers: CountableRange<Int>

    public init(region: GMRegion, position: vector_int2, layers: CountableRange<Int>) {
        self.region = region
        self.position = position
        self.layers = layers
    }
}
