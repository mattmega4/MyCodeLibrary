//
//  Get Key From Plist.swift
//  MyCodeLibrary
//
//  Created by Matthew Howes Singleton on 7/4/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation

if let path = Bundle.main.path(forResource: "Keys", ofType: "plist") {
    if let dic = NSDictionary(contentsOfFile: path) as? [String : String] {
        if let instaBugToken = dic["IBK"] {
            Instabug.start(withToken: instaBugToken, invocationEvent: .shake)
        }
    }
}
