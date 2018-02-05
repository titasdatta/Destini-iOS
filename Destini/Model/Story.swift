//
//  Story.swift
//  Destini
//
//  Created by Titas Datta on 05/02/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let story: String
    let choiceA: Choice?
    let choiceB: Choice?
    
    init(storyText: String, firstChoice: Choice, secondChoice: Choice) {
        story = storyText
        choiceA = firstChoice
        choiceB = secondChoice
    }
    
    init(storyText: String){
        story = storyText
        choiceA = nil
        choiceB = nil
    }
    
}
