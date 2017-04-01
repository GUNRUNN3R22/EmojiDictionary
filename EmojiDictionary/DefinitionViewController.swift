//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Alex Morozoff on 3/26/17.
//  Copyright © 2017 HoneyAndFennel. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiCategoryLabel: UILabel!
    @IBOutlet weak var emojiYearLabel: UILabel!
    @IBOutlet weak var emojiDisplay: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiDisplay.text = emoji.image
        emojiLabel.text = emoji.definition
        emojiCategoryLabel.text = emoji.category
        emojiYearLabel.text = "\(emoji.year)"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
