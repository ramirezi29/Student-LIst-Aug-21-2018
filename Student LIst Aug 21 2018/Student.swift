//
//  Student.swift
//  Student LIst Aug 21 2018
//
//  Created by Ivan Ramirez on 8/21/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class Student {
    
    init (firstName: String, lastName: String, age: Int)  {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    
    let firstName: String
    let lastName: String
    let age: Int
}
