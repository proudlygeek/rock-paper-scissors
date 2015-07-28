//
//  Rock_Paper_ScissorsTests.swift
//  Rock Paper ScissorsTests
//
//  Created by Gianluca on 28/07/15.
//  Copyright © 2015 Gianluca Bargelli. All rights reserved.
//

import XCTest

class Rock_Paper_ScissorsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameRules() {
        let combinations: [[Outcome:[Choice]]] = [
            [Outcome.Win:  [Choice.Rock, Choice.Scissors]],
            [Outcome.Win:  [Choice.Paper, Choice.Rock]],
            [Outcome.Win:  [Choice.Scissors, Choice.Paper]],
            [Outcome.Tie:  [Choice.Rock, Choice.Rock]],
            [Outcome.Tie:  [Choice.Paper, Choice.Paper]],
            [Outcome.Tie:  [Choice.Scissors, Choice.Scissors]],
            [Outcome.Lose: [Choice.Rock, Choice.Paper]],
            [Outcome.Lose: [Choice.Paper, Choice.Scissors]],
            [Outcome.Lose: [Choice.Scissors, Choice.Rock]]
        ]
    
        for combination in combinations {
            for (outcome, choices) in combination {
                XCTAssertEqual(GameRules.match(choices[0], versus: choices[1]), outcome)
            }
        }
    }
}
