//
//  GMTileGroup.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-02.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import UIKit

public class GMTileGroup: NSObject {
    var parent: GMTileGroup?
    var extent: CGRect
    
    public init(parent: GMTileGroup?, extent:CGRect) {
        self.parent = parent
        self.extent = extent
    }
}
