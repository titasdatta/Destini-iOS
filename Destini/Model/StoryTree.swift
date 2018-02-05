//
//  StoryTree.swift
//  Destini
//
//  Created by Titas Datta on 05/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class StoryTree {
    let rootStory: Story
    
    init() {
        let story6 = Story(storyText: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"")
        
        let story5 = Story(storyText: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.")
        
        let story4 = Story(storyText: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?")
        
        let choiceAStory3 = Choice(choiceText: "I love Elton John! Hand him the cassette tape.", story: story6)
        let choiceBStory3 = Choice(choiceText: "It\'s him or me! You take the knife and stab him.", story: story5)
        let story3 = Story(storyText: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", firstChoice: choiceAStory3, secondChoice: choiceBStory3)
        
        let choiceAStory2 = Choice(choiceText: "At least he\'s honest. I\'ll climb in.", story: story3)
        let choiceBStory2 = Choice(choiceText: "Wait, I know how to change a tire.", story: story4)
        let story2 = Story(storyText: "He nods slowly, unphased by the question.", firstChoice: choiceAStory2, secondChoice: choiceBStory2)
        
        let choiceARoot = Choice(choiceText: "I\'ll hop in. Thanks for the help!", story: story3)
        let choiceBRoot = Choice(choiceText: "Better ask him if he\'s a murderer first.", story: story2)
        rootStory = Story(storyText: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".", firstChoice: choiceARoot, secondChoice: choiceBRoot)
    }
}


