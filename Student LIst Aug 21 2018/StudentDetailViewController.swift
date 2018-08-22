//
//  StudentDetailViewController.swift
//  Student LIst Aug 21 2018
//
//  Created by Ivan Ramirez on 8/21/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {
    
    // Main code, it will run once when the app runs
    override func viewDidLoad() {
        super.viewDidLoad()
        print("error")
        updateViews()
    }
    
    private func updateViews() {
        // include isViewLoaded to load
        guard let student = student, isViewLoaded else  { return }
        
        firstNameLabel.text = student.firstName
        lastNameLabel.text = student.firstName
        ageLabel.text = ("\(student.age )")
    }
    // -- Create a code so the student detail view knows what data to use in order to update cells
    // #1 create the property Stduent
    
    var student: Student? {
        didSet {
            updateViews( )
            
            //#2 add the didSet property observer code. Every time the student property is change. the udpate views will udpate
            }
        }
        @IBOutlet weak var firstNameLabel: UILabel!
        @IBOutlet weak var lastNameLabel: UILabel!
        @IBOutlet weak var ageLabel: UILabel!
}
