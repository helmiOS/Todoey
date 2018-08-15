//
//  ViewController.swift
//  Todoey
//
//  Created by Helmi Jamil on 16/08/2018.
//  Copyright © 2018 helmiOS. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    var itemArray = ["buat xcode", "beli Sanding stick", "beli HiRM ARF"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Tableview Datasource Method
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)

        cell.textLabel?.text = itemArray[indexPath.row]

        return cell
    }
    
    //Tableview Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(itemArray[indexPath.row])
        
        // For CheckMark
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        //To get rid of the highlighted color once choose
        tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
    //Add New Items
    @IBAction func AddItemButton(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) {(action) in
            //what will happen when the user press add item button

            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create New Item"
            textField = alertTextField
        }
        
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
        
        
        
    


}

