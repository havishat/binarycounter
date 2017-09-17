//
//  TableViewCell.swift
//  BinaryCounter
//
//  Created by havisha tiruvuri on 9/13/17.
//  Copyright © 2017 havisha tiruvuri. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    //var indexPath: NSIndexPath?
    weak var delegate: TableViewDelegate?
    
    @IBOutlet weak var NumberLabel: UILabel!
    
   
    @IBAction func minusButton(_ sender: UIButton) {
      let text = NumberLabel.text!
      delegate?.minus(by: self, with: text)
      print(text)
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        let text = NumberLabel.text!
        delegate?.add(by: self, with: text)
        print(text, "2")
    }
    
    
   // override func viewDidLoad() {
     //   super.viewDidLoad()
     //   // Do any additional setup after loading the view, typically from a nib.
   // }
    
  //  override func didReceiveMemoryWarning() {
  //      super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 //   }
}
