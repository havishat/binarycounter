//
//  TableViewDelegate.swift
//  BinaryCounter
//
//  Created by havisha tiruvuri on 9/13/17.
//  Copyright © 2017 havisha tiruvuri. All rights reserved.
//

import UIKit

protocol TableViewDelegate: class {
    func add(by controller: TableViewCell, with text: String)
    func minus(by controller: TableViewCell, with text: String)
}
