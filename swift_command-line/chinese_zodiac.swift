//
//  main.swift
//  chinese_zodiac
//
//  Created by Chris Mauldin on 3/11/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

print("Type in a year, and see what chinese zodiac it is: ")

let year: Int = Int(readLine()!)!

var zodiacYear = year % 12

let zodiac = ["monkey", "rooster", "dog", "pig", "rat", "ox", "tiger", "rabbit", "dragon", "snake", "horse", "sheep"]

print("Year of the \(zodiac[zodiacYear])")
