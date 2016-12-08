//
//  vector_int.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-07.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import Foundation
import GameplayKit

func +(left: vector_int2, right: vector_int2) -> vector_int2 {
    return vector_int2(x: left.x + right.x, y: left.y + right.y)
}

func -(left: vector_int2, right: vector_int2) -> vector_int2 {
    return vector_int2(x: left.x - right.x, y: left.y - right.y)
}

func *(left: vector_int2, right: vector_int2) -> vector_int2 {
    return vector_int2(x: left.x * right.x, y: left.y * right.y)
}

func +(left: vector_int2, right: GMDirection) -> vector_int2 {
    switch right {
    case .east:
        return left + vector_int2(x: 1, y: 0)
    case .northEast:
        return left + vector_int2(x: 1, y: 1)
    case .north:
        return left + vector_int2(x: 0, y: 1)
    case .northWest:
        return left + vector_int2(x:-1, y: 1)
    case .west:
        return left + vector_int2(x:-1, y: 0)
    case .southWest:
        return left + vector_int2(x:-1, y:-1)
    case .south:
        return left + vector_int2(x: 0, y:-1)
    case .southEast:
        return left + vector_int2(x: 1, y:-1)
    }
}
