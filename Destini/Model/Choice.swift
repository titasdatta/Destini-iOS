//
//  Choice.swift
//  Destini
//
//  Created by Titas Datta on 05/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
class Choice {
    let choice: String
    let storyForChoice: Story?
    
    init(choiceText: String, story: Story) {
        choice = choiceText
        storyForChoice = story
    }
    
    init(choiceText: String) {
        choice = choiceText
        storyForChoice = nil
    }
}
