//
//  Quiz.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class Quiz: NSObject {
    var imageLevel: String
    var level: String
    var questionOne: String
    var questionTwo: String
    var questionThree: String
    var alternativeA1: String
    var alternativeA2: String
    var alternativeA3: String
    var alternativeB1: String
    var alternativeB2: String
    var alternativeB3: String
    var alternativeC1:String
    var alternativeC2:String
    var alternativeC3:String
    
    init(imageLevel: String, level: String, questionOne: String, questionTwo: String, questionThree: String, alternativeA1: String, alternativeA2: String, alternativeA3: String, alternativeB1: String, alternativeB2: String, alternativeB3: String, alternativeC1: String, alternativeC2: String, alternativeC3: String) {
        self.imageLevel = imageLevel
        self.level = level
        self.questionOne = questionOne
        self.questionTwo = questionTwo
        self.questionThree = questionThree
        self.alternativeA1 = alternativeA1
        self.alternativeA2 = alternativeA2
        self.alternativeA3 = alternativeA3
        self.alternativeB1 = alternativeB1
        self.alternativeB2 = alternativeB2
        self.alternativeB3 = alternativeB3
        self.alternativeC1 = alternativeC1
        self.alternativeC2 = alternativeC2
        self.alternativeC3 = alternativeC3
    }
}
