//
//  ViewController.swift
//  adventure
//
//  Created by user241078 on 6/18/23.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var promptLabel: UILabel!
    
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var choiceButton1: UIButton!
    
    var promptStruct = PromptStruct()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        promptStruct.nextPrompt(userChoice: userChoice)
        updateUI()
    }
    
    func updateUI() {
        let currentPrompt = promptStruct.getCurrentPrompt()
        
        promptLabel.text = currentPrompt.title
        promptLabel.sizeToFit()
        choiceButton1.setTitle(currentPrompt.choice1, for: .normal)
        choiceButton2.setTitle(currentPrompt.choice2, for: .normal)
    }
}
