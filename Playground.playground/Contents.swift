//: Playground - noun: a place where people can play

import UIKit
import GameplayKit
import GridMapKit

var region = GMRegion(x: 0, y: 0, w: 8, h: 8, layers: 10)

var layer = GMLayer(region: region, depth: 0)

var map = [ [ 1, 1, 1, 1, 1, 1, 1, 1 ],
            [ 1, 0, 0, 1, 1, 1, 0, 0 ],
            [ 1, 1, 0, 0, 0, 1, 1, 1 ],
            [ 0, 1, 0, 0, 0, 1, 0, 1 ],
            [ 0, 1, 1, 1, 1, 1, 0, 1 ],
            [ 0, 1, 0, 0, 0, 1, 1, 1 ],
            [ 1, 1, 0, 0, 0, 0, 0, 1 ],
            [ 1, 1, 1, 1, 1, 1, 1, 1 ] ]

for row in 0...7{
    for col in 0...7 {
        if map[row][col] == 1 {
            GMTile(layer: layer, x: col, y: row)
        }
    }
}
