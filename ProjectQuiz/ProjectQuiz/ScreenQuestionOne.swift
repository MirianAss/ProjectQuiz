//
//  ScreenQuestionOne.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class ScreenQuestionOne: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblAlternativeA: UILabel!
    @IBOutlet weak var lblAlternativeB: UILabel!
    @IBOutlet weak var lblAlternativeC: UILabel!
    
    var screenQuestionOne = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "", questionThree: "", alternativeA1: "", alternativeA2: "", alternativeA3: "", alternativeB1: "", alternativeB2: "", alternativeB3: "", alternativeC1: "", alternativeC2: "", alternativeC3: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblQuestion.text = screenQuestionOne.questionOne
        lblAlternativeA.text = "Alternativa A: \(screenQuestionOne.alternativeA1)"
        lblAlternativeB.text = "Alternativa B: \(screenQuestionOne.alternativeB1)"
        lblAlternativeC.text = "Alternativa C: \(screenQuestionOne.alternativeC1)"
    }

    @IBAction func btAlternativeA(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "screenQuestionTwo") as? ScreenQuestionTwo {
            
            screen.screenQuestionTwo = screenQuestionOne.self
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btAlternativeB(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func btAlternativeC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
}
