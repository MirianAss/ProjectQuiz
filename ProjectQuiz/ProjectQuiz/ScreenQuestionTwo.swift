//
//  ScreenQuestionTwo.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class ScreenQuestionTwo: UIViewController {

    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblQuestionA: UILabel!
    @IBOutlet weak var lblQuestionB: UILabel!
    @IBOutlet weak var lblQuestionC: UILabel!
    
    var screenQuestionTwo = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "", questionThree: "", alternativeA1: "", alternativeA2: "", alternativeA3: "", alternativeB1: "", alternativeB2: "", alternativeB3: "", alternativeC1: "", alternativeC2: "", alternativeC3: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblQuestion.text = screenQuestionTwo.questionTwo
        lblQuestionA.text = "Alternativa A: \(screenQuestionTwo.alternativeA2)"
        lblQuestionB.text = "Alternativa B: \(screenQuestionTwo.alternativeB2)"
        lblQuestionC.text = "Alternativa C: \(screenQuestionTwo.alternativeC2)"
    }
   
    @IBAction func btA(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btB(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btC(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "screenQuestionThree") as? ScreenQuestionThree {
            
            screen.screenQuestionThree = screenQuestionTwo.self
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
