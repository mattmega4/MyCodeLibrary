//
//  Guard vs If Let.swift
//  MyCodeLibrary
//
//  Created by Matthew Howes Singleton on 4/19/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation

// Guard vs If Let with Optionals

// MARK: If Let 

// where is , now?

func fooBinding(x: Int?) {
    if let x = x, x > 0 {
        // Do stuff with x
        x.description
    }

//     Value requirements not met, do something
}


// MARK: Guard


func fooGuard(x: Int?) {
    guard let x = x, x > 0 else {
        // Value requirements not met, do something
        return
    }

    // Do stuff with x
    x.description
}


// MARK: Guard vs If Let without Optionals

func fooNonOptionalGood(x: Int) {
    guard x > 0 else {
        // Value requirements not met, do something
        return
    }

    // Do stuff with x
}

func fooNonOptionalBad(x: Int) {
    if x <= 0 {
        // Value requirements not met, do something
        return
    }
    
    // Do stuff with x
}

