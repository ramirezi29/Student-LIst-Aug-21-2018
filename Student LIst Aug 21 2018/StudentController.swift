//
//  StudentController.swift
//  Student LIst Aug 21 2018
//
//  Created by Ivan Ramirez on 8/21/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import Foundation

class StudentController {
    static var students: [Student] {
        return [
            Student(firstName: "Andrew", lastName: "Madsen", age: 32 ),
                    Student(firstName: "Steve", lastName: "Jobs", age: 62),
                    Student(firstName: "Johnny", lastName: "Appleseed", age: 200)
        ]
    }
}
