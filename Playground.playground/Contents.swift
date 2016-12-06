//: Playground - noun: a place where people can play

import UIKit
import GridMapKit

var region = GMRegion(offset: CGPoint(x: 0, y: 0), size: CGSize(width: 16, height: 16))

var layer = GMLayer(region: region, depth: 0)

GMTile(layer: layer, point: CGPoint(x: 0, y: 0))
