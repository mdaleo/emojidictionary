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
    @IBOutlet weak var emojiDefLabel: UILabel!
  
    var emoji = "🐷";
    var emojiDef = "Whazup";
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDefLabel.text = self.emojiDef
    }


}
