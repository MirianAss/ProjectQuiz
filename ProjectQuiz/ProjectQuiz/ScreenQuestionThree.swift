//
//  ScreenQuestionThree.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class ScreenQuestionThree: UIViewController {
    
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblQuestionA: UILabel!
    @IBOutlet weak var lblQuestionB: UILabel!
    @IBOutlet weak var lblQuestionC: UILabel!
    
    var screenQuestionThree = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "", questionThree: "", alternativeA1: "", alternativeA2: "", alternativeA3: "", alternativeB1: "", alternativeB2: "", alternativeB3: "", alternativeC1: "", alternativeC2: "", alternativeC3: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblQuestion.text = screenQuestionThree.questionThree
        lblQuestionA.text = "Alternativa A: \(screenQuestionThree.alternativeA3)"
        lblQuestionB.text = "Alternativa B: \(screenQuestionThree.alternativeB3)"
        lblQuestionC.text = "Alternativa C: \(screenQuestionThree.alternativeC3)"
        
    }
    
    @IBAction func btA(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btB(_ sender: Any) {
        if let screen = storyboard?.instantiateViewController(withIdentifier: "end") as? EndScreen {
            
            screen.end = screenQuestionThree.self
            
            self.navigationController?.pushViewController(screen, animated: true)
            
        }
        
    }
    
    @IBAction func btC(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
//b
