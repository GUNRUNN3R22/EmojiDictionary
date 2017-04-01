//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Alex Morozoff on 3/26/17.
//  Copyright © 2017 HoneyAndFennel. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "null"
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDisplay: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiDisplay.text = emoji
        
        if emoji == "😐" {
            emojiLabel.text = "meh"
        }
        if emoji == "😡"{
            emojiLabel.text = "angry"
        }
        if emoji == "💀"{
            emojiLabel.text = "dead"
        }
        if emoji == "👾" {
            emojiLabel.text = "pew pew"
        }
        if emoji == "🖖" {
            emojiLabel.text = "spock"
        }
        if emoji == "💪" {
            emojiLabel.text = "beefy"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
