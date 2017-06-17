//
//  Functions.swift
//  MyCodeLibrary
//
//  Created by Matthew Singleton on 4/18/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation
import UIKit


// MARK: External vs Internal Parametsrs

// Example:

func drawHorizontalLine(from startX: Double, to endX: Double, using color: UIColor) {
  //
}

// 'from, to, using' are external
// 'startX, endX, color' are internal

// Internal are used internally, as in insie the metho
// External are use when called. For the purpose of reading like english when called

// Usage

let temp = drawHorizontalLine(from: 5.0, to: 8.5, using: .blue)
