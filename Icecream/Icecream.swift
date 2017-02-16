//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var array: [String] = []
        for (name, favFlavor) in favoriteFlavorsOfIceCream {
            if favFlavor == flavor{
                array.append(name)
            }
        }
        return array
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        return names(forFlavor: flavor).count
    }
    
    // 4.
    func flavor(forPerson name: String) -> String? {
        if let person = favoriteFlavorsOfIceCream[name] {
            return person
        } else {
            return nil
        }
    }

    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        let search = favoriteFlavorsOfIceCream[forPerson]
        
        if search != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
            return true
        } else {
            return false
        }
    }
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        var array: [String] = []
        for (name, _) in favoriteFlavorsOfIceCream {
            array.append(name)
        }
        return array.count
    }
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person) != nil {
            return false
        } else {
            return true
        }
    }
    
    // 9.
    func attendeeList() -> String {
        var str: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            if name == allNames[0] {
                str += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            } else {
                str += "\n\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            }
        }
        print(str)
        return str
    }

}
