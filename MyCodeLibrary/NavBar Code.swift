//
//  NavBar Code.swift
//  MyCodeLibrary
//
//  Created by Matthew Singleton on 2/12/17.
//  Copyright © 2017 Matthew Singleton. All rights reserved.
//

import Foundation
import UIKit


// MARK: Nav Bar Set Up

func navBarSetUP() {
    title = "Card Details"
    navigationController?.navigationBar.barTintColor = UIColor(red: 108.0/255.0, green: 158.0/255.0, blue: 236.0/255.0, alpha: 1.0) // Blue
    UINavigationBar.appearance().tintColor = .white
    UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
    navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont(name: "GillSans-Bold", size: 20)!]
}


