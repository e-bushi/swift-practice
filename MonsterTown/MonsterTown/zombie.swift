//
//  zombie.swift
//  MonsterTown
//
//  Created by Chris Mauldin on 7/7/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walkWithLimp = true
    
    override func terrorizeTown() {
        if (town?.population)! >= 10 {
            town?.changePopulation(by: -10)
        } else {
            town?.population = 0
        }
    }
}
