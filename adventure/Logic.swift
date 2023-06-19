//
//  Logic.swift
//  adventure
//
//  Created by user241078 on 6/18/23.
//

import Foundation

struct Prompt {
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.title = title
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
}

struct PromptStruct {
    
    let prompts = [
        Prompt(
            title: "Enter the enchanted forest?",
            choice1: "Venture on.",
            choice1Destination: 3,
            choice2: "Turn around.",
            choice2Destination: 1
        ),
        Prompt(
            title: "You bump into an old forest gnome.",
            choice1: "Talk.",
            choice1Destination: 2,
            choice2: "Run!",
            choice2Destination: 3
        ),
        Prompt(
            title: "He tells you about a mysterious tree.",
            choice1: "Look for the tree?",
            choice1Destination: 5,
            choice2: "Go home.",
            choice2Destination: 4
        ),
        Prompt(
            title: "You spot a path.",
            choice1: "Follow the path.",
            choice1Destination: 6,
            choice2: "Stray from the path.",
            choice2Destination: 5
        ),
        Prompt(
            title: "Your day was not filled with adventure :(",
            choice1: "Restart",
            choice1Destination: 0,
            choice2: "Restart",
            choice2Destination: 0
        ),
        Prompt(
            title: "Oops! You were attacked by raccoons!.",
            choice1: "Restart",
            choice1Destination: 0,
            choice2: "Restart",
            choice2Destination: 0
        ),
        Prompt(
            title: "Congratulations! You found the old magic oak tree!",
            choice1: "Restart?",
            choice1Destination: 0,
            choice2: "Restart!",
            choice2Destination: 0
        )
    ]
    
    var promptNumber = 0
    
    mutating func nextPrompt(userChoice: String) {
        let currentPrompt = prompts[promptNumber]
        
        if userChoice == currentPrompt.choice1 {
            promptNumber = currentPrompt.choice1Destination
        } else {
            promptNumber = currentPrompt.choice2Destination
        }
    }
    
    func getCurrentPrompt() -> Prompt {
        return prompts[promptNumber]
    }
}
