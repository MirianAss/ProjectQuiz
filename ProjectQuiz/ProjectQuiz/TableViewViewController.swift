//
//  TableViewViewController.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class TableViewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var LevelOne = Quiz(imageLevel: "1", level: "NÍVEL - GEOGRAFIA", questionOne: "Budapeste é a capital de qual país europeu?", questionTwo: "Onde se localiza a Torre de Pisa?", questionThree: "Qual a flor nacional do Brasil?", alternativeA1: "Hungria", alternativeA2: "Alemanha", alternativeA3: "Girassol", alternativeB1: "Dinamarca", alternativeB2: "França", alternativeB3: "Ipê - Amarelo", alternativeC1: "Eslováquia", alternativeC2: "Itália", alternativeC3: "Rosa Amarela")
    var LevelTwo = Quiz(imageLevel: "2", level: "NÍVEL - MATEMÁTICA", questionOne: "Quanto é 140+150?", questionTwo: "Quanto é 250×5?", questionThree: "Quanto é 150÷3?", alternativeA1: "290", alternativeA2: "4.589", alternativeA3: "167", alternativeB1: "280", alternativeB2: "1.347", alternativeB3: "50", alternativeC1: "300", alternativeC2: "1.250", alternativeC3: "49")
    var LevelThree = Quiz(imageLevel: "3", level: "NÍVEL - PORTUGUES", questionOne: "O que é interjeição?", questionTwo: "A palavra -> guarda-chuva <- é um...", questionThree: "-> Portanto <- é uma...", alternativeA1: "Exprime emoções e sentimentos", alternativeA2: "Verbo", alternativeA3: "Reposição", alternativeB1: "Ação, estado ou fenômeno", alternativeB2: "Artigo", alternativeB3: "Conjunção", alternativeC1: "Características do substantivo", alternativeC2: "Substantivo", alternativeC3: "Advérbio")
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
