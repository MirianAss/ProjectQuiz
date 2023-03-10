//
//  TableViewViewController.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class TableViewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var LevelOne = Quiz(imageLevel: "1", level: "NÍVEL", questionOne: "Budapeste é a capital de qual país europeu?", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var LevelTwo = Quiz(imageLevel: "2", level: "NÍVEL", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var LevelThree = Quiz(imageLevel: "3", level: "NÍVEL", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var arrayLevels: [Quiz] = []
    
    func quiz() {
        arrayLevels = [LevelOne, LevelTwo, LevelThree]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quiz()
        tableView.delegate = self
        tableView.dataSource = self
        let uiNib = UINib(nibName: "CustomCellXib", bundle: nil)
        tableView.register(uiNib, forCellReuseIdentifier: "cellXib")
    }

}
extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLevels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXib", for: indexPath) as? CustomCellXib {
            
            cell.setupQuiz(quizXib: arrayLevels[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
 
}
extension TableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "screenQuestionOne") as? ScreenQuestionOne {
            
            screen.screenQuestionOne = arrayLevels[indexPath.row]
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
