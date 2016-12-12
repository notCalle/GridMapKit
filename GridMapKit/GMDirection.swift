//
//  GMDirection.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-07.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import Foundation
import GameplayKit

public enum GMDirection {
    case east
    case northEast
    case north
    case northWest
    case west
    case southWest
    case south
    case southEast
    
    public func point(relativeTo point: vector_int2) -> vector_int2 {
        switch self {
        case .east:
            return vector_int2(point.x + 1, point.y)
        case .northEast:
            return vector_int2(point.x + 1, point.y + 1)
        case .north:
            return vector_int2(point.x, point.y + 1)
        case .northWest:
            return vector_int2(point.x - 1, point.y + 1)
        case .west:
            return vector_int2(point.x - 1, point.y)
        case .southWest:
            return vector_int2(point.x - 1, point.y - 1)
        case .south:
            return vector_int2(point.x, point.y - 1)
        case .southEast:
            return vector_int2(point.x + 1, point.y - 1)
        }
    }
}
