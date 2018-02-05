//
//  ViewController.swift
//  Destini
//
//  Created by Titas Datta on 5/2/18
//

import UIKit

class ViewController: UIViewController {

    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    let storyTree = StoryTree()
    var currentStory: Story = Story(storyText: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentStory = storyTree.rootStory
        updateUI(story: currentStory)
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if sender.tag == 1 {
            updateUI(story: (currentStory.choiceA?.storyForChoice)!)
        }else if sender.tag == 2 {
            updateUI(story: (currentStory.choiceB?.storyForChoice)!)
        }
        
    
    }
    
    func updateUI(story: Story){
        currentStory = story
        
        storyTextView.text = story.story
        if let choiceAText = story.choiceA?.choice {
            topButton.setTitle(choiceAText, for: UIControlState.normal)
        } else {
            topButton.isHidden = true
        }
        if let choiceBText = story.choiceB?.choice {
            bottomButton.setTitle(choiceBText, for: UIControlState.normal)
        } else {
            bottomButton.isHidden = true
        }
        
    }


}

