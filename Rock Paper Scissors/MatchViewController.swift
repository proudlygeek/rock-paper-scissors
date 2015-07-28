//
//  MatchViewController.swift
//  Rock Paper Scissors
//
//  Created by Gianluca on 28/07/15.
//  Copyright © 2015 Gianluca Bargelli. All rights reserved.
//
import UIKit

class MatchViewController: UIViewController {
    var userChoice: Choice!
    var computerChoice: Choice!
    
    @IBOutlet weak var userChoiceImage: UIImageView!
    @IBOutlet weak var computerChoiceImage: UIImageView!
    @IBOutlet weak var outcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        userChoiceImage.image = UIImage(named: self.userChoice.rawValue)
        computerChoiceImage.image = UIImage(named: self.computerChoice.rawValue)
        computerChoiceImage.transform = CGAffineTransformMakeScale(-1, 1)
        
        let result: Outcome = GameRules.match(self.userChoice, versus: self.computerChoice)
        
        switch(result) {
        case(Outcome.Win):
            outcomeLabel.text = "You Win! 🎉"
        case(Outcome.Tie):
            outcomeLabel.text = "Tie! 😐"
        case(Outcome.Lose):
            outcomeLabel.text = "You Lose 😓"
            
        }
    }
    
    @IBAction func tryAgain(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
