//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        
        updateUI()
        super.viewDidLoad()
        
    }
    
    @IBAction func choiceMade(
        _ sender: UIButton
    ) {
        
        
        story.nextStory(
            userChoice: sender.currentTitle ?? "Question"
        )
        
        updateUI()
    }
    
    func updateUI() {
        
        storyLabel.text = story.storyList[story.storyNumber].title
        choice1Button.setTitle(
            story.storyList[story.storyNumber].choice1,
            for: UIControl.State.normal
        )
        choice2Button.setTitle(
            story.storyList[story.storyNumber].choice2,
            for: UIControl.State.normal
        )
    }
    
    
    
}




