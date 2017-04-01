//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Alex Morozoff on 3/26/17.
//  Copyright © 2017 HoneyAndFennel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojiList : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojiList = initEmojiArray()
        
    }
    
    //Datasource functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojiList[indexPath.row]
        cell.textLabel?.text = emoji.image
        return cell
    }
    
    //Delegate function
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojiList[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DefinitionViewController
        
        destination.emoji = sender as! Emoji
        
    }
    
    func initEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.image = "😐"
        emoji1.definition = "Meh"
        emoji1.category = "Face"
        emoji1.year = 2011
        
        let emoji2 = Emoji()
        emoji2.image = "😡"
        emoji2.definition = "Angry"
        emoji2.category = "Face"
        emoji2.year = 2011
        
        let emoji3 = Emoji()
        emoji3.image = "💀"
        emoji3.definition = "Dead"
        emoji3.category = "Face"
        emoji3.year = 2011
        
        let emoji4 = Emoji()
        emoji4.image = "👾"
        emoji4.definition = "Space Invader"
        emoji4.category = "Activities and Games"
        emoji4.year = 2011
        
        let emoji5 = Emoji()
        emoji5.image = "🖖"
        emoji5.definition = "Spock"
        emoji5.category = "Gestures"
        emoji5.year = 2011
        
        let emoji6 = Emoji()
        emoji6.image = "💪"
        emoji6.definition = "Beefy"
        emoji6.category = "Gestures"
        emoji6.year = 2011
        
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

