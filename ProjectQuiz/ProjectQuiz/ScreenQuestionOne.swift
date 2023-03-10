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
    
    var screenQuestionOne = Quiz(imageLevel: "", level: "", questionOne: "Budapeste é a capital de qual país europeu?", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "Hungria", alternativeB: "Dinamarca", alternativeC: "Eslováquia")
//    alternativa certa é a A
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblQuestion.text = screenQuestionOne.questionOne
        lblAlternativeA.text = "Hungria"
        lblAlternativeB.text = screenQuestionOne.alternativeB
        lblAlternativeC.text = screenQuestionOne.alternativeC
    }

    @IBAction func btAlternativeA(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "screenQuestionTwo") as? ScreenQuestionTwo {
            
            screen.screenQuestionTwo = screenQuestionOne.self
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
    
    @IBAction func btAlternativeB(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func btAlternativeC(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)

    }
}
