///Users/macbookpro/Documents/Xcode Projects/Dice/Dice/ViewController.swift
//  ViewController.swift
//  Dice
//
//  Created by MacBookPro on 3/6/19.
//  Copyright © 2019 Saphir Consult. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageV1: UIImageView!
    @IBOutlet weak var diceImageV2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomDices()
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        getRandomDices()
    }
    
    func getRandomDices(){
        
        randomDiceIndex1 = Int.random(in: 1 ... 5)
        randomDiceIndex2 = Int.random(in: 1 ... 5)
        
        diceImageV1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageV2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getRandomDices()
    }
    
}

