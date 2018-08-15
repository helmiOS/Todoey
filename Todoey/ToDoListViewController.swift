//
//  ViewController.swift
//  Todoey
//
//  Created by Helmi Jamil on 16/08/2018.
//  Copyright © 2018 helmiOS. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["buat xcode", "beli Sanding stick", "beli HiRM ARF"]
    
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


}

