//
//  main.swift
//  MonsterTown
//
//  Created by Chris Mauldin on 7/6/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

var myTown = Town()

//create an vampire instance
var vampire = Vampire()
vampire.name = "Dracula"
vampire.town = myTown
vampire.terrorizeTown()

vampire.town?.printDescription()
