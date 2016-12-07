//
//  CGPoint.swift
//  GridMapKit
//
//  Created by Calle Englund on 2016-12-07.
//  Copyright © 2016 Calle Englund. All rights reserved.
//

import Foundation

func +(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func -(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func *(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

func +(left: CGPoint, right: GMDirection) -> CGPoint {
    switch right {
    case .east:
        return left + CGPoint(x: 1, y: 0)
    case .northEast:
        return left + CGPoint(x: 1, y: 1)
    case .north:
        return left + CGPoint(x: 0, y: 1)
    case .northWest:
        return left + CGPoint(x:-1, y: 1)
    case .west:
        return left + CGPoint(x:-1, y: 0)
    case .southWest:
        return left + CGPoint(x:-1, y:-1)
    case .south:
        return left + CGPoint(x: 0, y:-1)
    case .southEast:
        return left + CGPoint(x: 1, y:-1)
    }
}
