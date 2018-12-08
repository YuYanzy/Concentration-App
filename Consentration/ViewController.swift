//
//  ViewController.swift
//  Consentration
//
//  Created by 张宇 on 2018/12/7.
//  Copyright © 2018 张宇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
    var flipCount = 0 {
        didSet{
            flipConutLabel.text = "Flips: \(flipCount)"
        }
    }

    var emojiArray = ["👻","🎃","😂","😞","😞","🎃","😂","👻"]
    
    @IBOutlet weak var flipConutLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
//        print ("Agh! A ghost!")
        flipCount += 1
        if let cardNumer = cardButtons.index(of: sender){
            print("cardNumer= \(cardNumer)")
            flipCard(withEmoji: emojiArray[cardNumer], on: sender)
        } else {
            print("Chosen card was not in cardButtons!")
        }
//        print("cardNumer= \(cardNumer)")
        
//        flipCard(withEmoji: emojiArray[cardNumer], on: sender)
    }

    func flipCard(withEmoji emoji: String, on button: UIButton){
        print("flipCard withEmoji: \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
}

