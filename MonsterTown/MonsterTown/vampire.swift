//
//  vampire.swift
//  MonsterTown
//
//  Created by Chris Mauldin on 7/7/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    var vampireThralls = 0
    
    
    override func terrorizeTown() {
        vampireThralls+=1
        
        if town != nil {
            print("# of vampire Thralls: \(vampireThralls)")
        } else {
            print("\(self.name) hasn\'\t found a town to terrorize yet..." )
        }
        
        town?.changePopulation(by: -1)
        super.terrorizeTown()
    }
}
