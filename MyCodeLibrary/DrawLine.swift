//
//  DrawLine.swift
//  MyCodeLibrary
//
//  Created by Matthew Howes Singleton on 4/20/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation
import UIKit


// MARK: Draw A Line Inside a VIew and


    func drawLineFromPointToPoint(startX: Int, toEndingX endX: Int, startingY startY: Int, toEndingY endY: Int, ofColor lineColor: UIColor, widthOfLine lineWidth: CGFloat, inView view: UIView) {

        let path = UIBezierPath()
        path.move(to: CGPoint(x: startX, y: startY))
        path.addLine(to: CGPoint(x: endX, y: endY))

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth

        view.layer.addSublayer(shapeLayer)

    }
//
//
// drawLineFromPointToPoint(startX: Int, toEndingX: Int, startingY: Int, toEndingY: Int, ofColor: UIColor, widthOfLine: CGFloat, inView: UIView)

