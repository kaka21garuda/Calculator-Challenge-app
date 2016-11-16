//
//  TableViewController.swift
//  CalculatorApp
//
//  Created by Buka Cakrawala on 11/16/16.
//  Copyright © 2016 Buka Cakrawala. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewControllerInstance: ViewController!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllerInstance.operationArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell!
        return cell!
    }
    
}
