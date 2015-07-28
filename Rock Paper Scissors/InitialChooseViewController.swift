//
//  InitialChooseViewController.swift
//  Rock Paper Scissors
//
//  Created by Gianluca on 28/07/15.
//  Copyright © 2015 Gianluca Bargelli. All rights reserved.
//

import UIKit

class InitialChooseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "playMatch" {
            let controller = segue.destinationViewController as!
                MatchViewController
            
            let button = sender as! UIButton
            
            if button.tag == 1 {
                controller.userChoice = Choice.Paper
            } else {
                controller.userChoice = Choice.Scissors
            }
            
            controller.computerChoice = randomComputerChoice()
        }
    }
    
    func randomComputerChoice() -> Choice {
        let choices = [Choice.Rock, Choice.Paper, Choice.Scissors]
        return choices[Int(arc4random() % 3)]
    }
    
    @IBAction func chooseRock() {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("matchViewController")
            as! MatchViewController
        
        controller.userChoice = Choice.Rock
        controller.computerChoice = randomComputerChoice()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func choosePaper(sender: UIButton) {
        let button = UIButton()
        button.tag = 1
        self.performSegueWithIdentifier("playMatch", sender: button)
    }
}

