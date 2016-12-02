//
//  GMTileGroup.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-02.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit

class GMTileGroup: NSObject {
    var parent: GMTileGroup?
    var extent: CGRect
    
    init(parent: GMTileGroup?, extent:CGRect) throws {
        if !(parent?.extent.contains(extent))! {
            throw GMError.outsideParentExtent
        }
        self.parent = parent
        self.extent = extent
    }
}
