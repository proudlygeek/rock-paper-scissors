//
//  GameRules.swift
//  Rock Paper Scissors
//
//  Created by Gianluca on 28/07/15.
//  Copyright © 2015 Gianluca Bargelli. All rights reserved.
//

import Foundation

enum Choice: String {
    case Rock, Paper, Scissors
}

enum Outcome: String {
    case Win, Tie, Lose
}

struct GameRules {
    static func match(firstPlayerChoice: Choice, versus secondPlayerChoice: Choice) -> Outcome {
        var result: Outcome
        
        switch(firstPlayerChoice, secondPlayerChoice) {
        case (Choice.Rock, Choice.Scissors),
             (Choice.Scissors, Choice.Paper),
             (Choice.Paper, Choice.Rock):
                result = Outcome.Win
                
        case (Choice.Rock, Choice.Rock),
             (Choice.Scissors, Choice.Scissors),
             (Choice.Paper, Choice.Paper):
               result = Outcome.Tie
            
        default:
            result = Outcome.Lose
        }
        
        return result
    }
}