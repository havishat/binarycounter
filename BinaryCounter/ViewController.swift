//
//  ViewController.swift
//  BinaryCounter
//
//  Created by havisha tiruvuri on 9/13/17.
//  Copyright © 2017 havisha tiruvuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, TableViewDelegate{
    var tasks = ["1","10", "100", "1000","10000","100000","1000000","10000000","100000000","1000000000","10000000000","100000000000","1000000000000","10000000000000","100000000000000"]
 
    var totalnumber = 0
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var TableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create number it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "Binary", for: indexPath) as! TableViewCell
        // set text label to the model that is corresponding to the row in array
        cell.NumberLabel?.text = tasks[indexPath.row]
        // return cell so that Table View knows what to render in each row
        
       cell.delegate = self
        
        
        return cell
    }
    
   func add(by controller: TableViewCell, with text: String) {
        totalnumber = (totalnumber + Int(text)!)
        total.text = String(totalnumber)
        viewDidLoad()
    
      //  print("I'm the hidden controller, But I am responding to the cancel button press on the top view controller.")
   }
    
    func minus(by controller: TableViewCell, with text: String) {
        totalnumber = (totalnumber - Int(text)!)
        total.text = String(totalnumber)
        viewDidLoad()
        
        //  print("I'm the hidden controller, But I am responding to the cancel button press on the top view controller.")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TableView.reloadData()
       TableView.dataSource = self
        total.text = String(totalnumber)
      // TableView.delegate = self as? UITableViewDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

