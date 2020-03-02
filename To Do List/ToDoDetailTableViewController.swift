//
//  ToDoDetailTableViewController.swift
//  To Do List
//
//  Created by Nicholas Mercadante on 3/1/20.
//  Copyright © 2020 Nicholas Mercadante. All rights reserved.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {
    

    @IBOutlet weak var saveBarButton: UIBarButtonItem!


    @IBOutlet weak var noteView: UITextView!
    
    @IBOutlet weak var datePicker: UITableViewCell!
    
    @IBOutlet weak var nameField: UITextView!
    
    var toDoItem: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = toDoItem
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController?.popViewController(animated: true)
        }
    }
    


}
