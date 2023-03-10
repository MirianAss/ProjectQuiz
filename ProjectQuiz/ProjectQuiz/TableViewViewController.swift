//
//  TableViewViewController.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class TableViewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var LevelOne = Quiz(imageLevel: "1", level: "NÍVEL", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var LevelTwo = Quiz(imageLevel: "2", level: "NÍVEL", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var LevelThree = Quiz(imageLevel: "3", level: "NÍVEL", questionOne: "", questionTwo: "", questionThree: "", questionFour: "", questionFive: "", alternativeA: "", alternativeB: "", alternativeC: "")
    var arrayLevels: [Quiz] = []
    
    func quiz() {
        arrayLevels = [LevelOne, LevelTwo, LevelThree]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
