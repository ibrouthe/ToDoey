//
//  ViewController.swift
//  ToDoey
//
//  Created by Ib Routhe on 09/09/2019.
//  Copyright © 2019 Ib Routhe. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Købe ny BMW", "Producere en ny Flappy Bird","Lære Bach Prelude C Major"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK - Tableview Datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
}

