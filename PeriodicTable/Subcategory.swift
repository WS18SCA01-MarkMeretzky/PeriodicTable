//
//  Subcategory.swift
//  PeriodicTable
//
//  Created by Mark Meretzky on 11/15/18.
//  Copyright © 2018 New York University School of Professional Studies. All rights reserved.
//

import Foundation;
import UIKit;   //for UIColor

enum Subcategory: Int {
    case nobleGas = 0;
    case reactiveNonmetal;
    case metalloid;
    case posttransitionMetal;
    case transitionMetal;
    case actinide;
    case lanthanide;
    case alkalineEarthMetal;
    case alkaliMetal;
    case unknown;
    
    //colors is a type property.  Look up a Subcategory to find its color.
    
    static let colors: [UIColor] = [
        UIColor(red: 194/255.0, green: 255/255.0, blue: 254/255.0, alpha: 1), //.nobleGas
        UIColor(red: 240/255.0, green: 254/255.0, blue: 149/255.0, alpha: 1), //.reactiveNonmetal
        UIColor(red: 204/255.0, green: 203/255.0, blue: 155/255.0, alpha: 1), //.metalloid
        UIColor(red: 204/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), //posttransitionMetal
        UIColor(red: 254/255.0, green: 192/255.0, blue: 193/255.0, alpha: 1), //.transitionMetal
        UIColor(red: 253/255.0, green: 155/255.0, blue: 203/255.0, alpha: 1), //.actinide
        UIColor(red: 254/255.0, green: 193/255.0, blue: 254/255.0, alpha: 1), //.lanthide
        UIColor(red: 254/255.0, green: 221/255.0, blue: 176/255.0, alpha: 1), //.alkalineEarthMetal
        UIColor(red: 253/255.0, green: 103/255.0, blue: 106/255.0, alpha: 1), //.alkaliMetal
        UIColor(red: 232/255.0, green: 232/255.0, blue: 232/255.0, alpha: 1)  //.unknown
    ];
    
    //color is a computed property.  Each Subcategory has its own color.

    var color: UIColor {
        return Subcategory.colors[rawValue];
    }
};
