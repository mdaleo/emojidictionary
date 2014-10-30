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
    
    var emojis = ["😍", "😭","😗", "🐴"]
    var emojiDefs = ["Heart Eyes", "Crying Face", "Kissy Face", "Dat Horse"]
    var emoji = "🐷"
    var emojiDef = "Emoji Definition"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.backgroundColor = UIColor.whiteColor()
        cell.textLabel.text = self.emojis[indexPath.row];
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.emojiDef = self.emojiDefs[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.emojiDef = self.emojiDef
    }
}