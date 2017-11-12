//
//  monster.swift
//  MonsterTown
//
//  Created by Chris Mauldin on 7/7/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

class Monster {
    
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town")
        } else {
            print("\(name) hasn\'\t found a town to terrorize yet..." )
        }
    }
}

