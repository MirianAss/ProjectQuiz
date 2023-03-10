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
    
    var screenQuestionTwo = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "Onde se localiza a Torre de Pisa?", questionThree: "", questionFour: "", questionFive: "", alternativeA: "Alemanha", alternativeB: "França", alternativeC: "Itália")
//    c
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func btA(_ sender: Any) {
    }
    
    @IBAction func btB(_ sender: Any) {
    }
    
    @IBAction func btC(_ sender: Any) {
    }
}
