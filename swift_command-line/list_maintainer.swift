//
//  main.swift
//  list_maintainer
//
//  Created by Chris Mauldin on 3/11/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import Foundation

var list = ["pizza", "popcorn", "poppy seeds"]

func addItem(_ array: inout [String]) {
    
    print("What item would you like to add? ")
    if let item = readLine() {
        
        array.append(item)
    }

    print("...item added")
}

func removeItem(_ array: inout [String]) {
    
    print("What item would you like to remove? ")
    
    if let item = readLine() {
        
        var count = 0
        
        while count < array.count {
            
            if array[count] == item {
                
                break
                
            } else {
                
                count+=1
            }
        }
        
        array.remove(at: count)
    }
    
    
    print("...Item removed")
}



