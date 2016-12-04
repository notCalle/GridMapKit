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

    public init(region: GMRegion) {
        self.region = region
    }
}
