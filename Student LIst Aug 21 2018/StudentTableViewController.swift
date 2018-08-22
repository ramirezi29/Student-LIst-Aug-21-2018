//
//  StudentTableViewController.swift
//  Student LIst Aug 21 2018
//
//  Created by Ivan Ramirez on 8/21/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {

// Tabel View
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #1. The return, whichi s composed of the number of students is found in the StudentController file. bc it holds the number of students
        
        return StudentController.students.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath)

        // Configure the cell with the information you want it to displace
        
        let student = StudentController.students[indexPath.row]
        cell.textLabel?.text = student.firstName
        return cell
    }
 
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let tappedIndexPath = tableView.indexPathForSelectedRow else { return }
        
        let student = StudentController.students[tappedIndexPath.row]
        if  let detailVC = segue.destination as? StudentDetailViewController {
            detailVC.student = student
        
        }
    }
    

}
