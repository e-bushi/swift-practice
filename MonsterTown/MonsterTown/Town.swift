//
//  Town.swift
//  MonsterTown
//
//  Created by Chris Mauldin on 7/6/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_244
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population), Number of Stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
    
}
