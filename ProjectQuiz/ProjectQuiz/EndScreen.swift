//
//  EndScreen.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 11/03/23.
//

import UIKit

class EndScreen: UIViewController {
    
    var end = Quiz(imageLevel: "", level: "", questionOne: "", questionTwo: "", questionThree: "", alternativeA1: "", alternativeA2: "", alternativeA3: "", alternativeB1: "", alternativeB2: "", alternativeB3: "", alternativeC1: "", alternativeC2: "", alternativeC3: "")

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btBackStart(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
