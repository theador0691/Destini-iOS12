//
//  Story.swift
//  Destini
//
//  Created by Andrew Taylor on 26/08/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let storyLine : String
    let answerA : String
    let answerB : String
    
    init(storyLine: String, answerA : String, answerB: String) {
        self.storyLine = storyLine
        self.answerA = answerA
        self.answerB = answerB
    }
}
