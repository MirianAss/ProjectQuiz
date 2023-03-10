//
//  ViewController.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btStart(_ sender: Any) {
        if let screenNavigation = self.storyboard?.instantiateViewController(withIdentifier: "navigation") {
            
            self.present(screenNavigation, animated: true)
        }
    }
    
}

