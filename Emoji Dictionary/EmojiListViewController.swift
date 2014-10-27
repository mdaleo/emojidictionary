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
    
    var emojis = ["oh hai", "😍", "😭", "LOWELL ARE COASTERZ","😗", "🐴", "end row roflz"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.backgroundColor = UIColor.brownColor()
        cell.textLabel.text = self.emojis[indexPath.row];
        return cell
    }
}