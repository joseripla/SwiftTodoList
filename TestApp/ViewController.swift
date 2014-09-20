//
//  ViewController.swift
//  TestApp
//
//  Created by Jose Ricardo on 19/09/14.
//  Copyright (c) 2014 plapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet  var tableView: UITableView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    let tableData = ["One","Two","Three"]

    
    @IBAction func myButtonPressed(sender: AnyObject) {
    
        label1.text="Prueba de Swift!!"
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.tableData.count;
    }
    
    func tableView(tableView: UITableView!,
                        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
    let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
        
        cell.textLabel!.text! = tableData[indexPath.row]
    
    return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


