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
    var questionFour: String
    var questionFive: String
    var alternativeA: String
    var alternativeB: String
    var alternativeC:String
    
    init(imageLevel: String, level: String, questionOne: String, questionTwo: String, questionThree: String, questionFour: String, questionFive: String, alternativeA: String, alternativeB: String, alternativeC: String) {
        self.imageLevel = imageLevel
        self.level = level
        self.questionOne = questionOne
        self.questionTwo = questionTwo
        self.questionThree = questionThree
        self.questionFour = questionFour
        self.questionFive = questionFive
        self.alternativeA = alternativeA
        self.alternativeB = alternativeB
        self.alternativeC = alternativeC
    }
}
