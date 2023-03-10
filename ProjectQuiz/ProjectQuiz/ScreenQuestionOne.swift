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
    
    var screenQuestionOne = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btAlternativeA(_ sender: Any) {
    }
    
    @IBAction func btAlternativeB(_ sender: Any) {
    }

    @IBAction func btAlternativeC(_ sender: Any) {
    }
}
