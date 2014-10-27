//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by MacBook on 10/27/14.
//  Copyright (c) 2014 MacBook. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController{

    @IBOutlet weak var emojiLabel: UILabel!
  
    override func viewDidLoad() {
        self.emojiLabel.text = "🐷";
    }


}
