//
//  EmojiList.swift
//  Emoji Dictionary
//
//  Created by MacBook on 10/20/14.
//  Copyright (c) 2014 MacBook. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.backgroundColor = UIColor.brownColor()
        cell.textLabel.text = "😍"
        return cell
    }
}