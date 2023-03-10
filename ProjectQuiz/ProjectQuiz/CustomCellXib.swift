//
//  CustomCellXib.swift
//  ProjectQuiz
//
//  Created by Mirian Santana on 10/03/23.
//

import UIKit

class CustomCellXib: UITableViewCell {

    @IBOutlet weak var imageXib: UIImageView!
    @IBOutlet weak var lblXib: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupQuiz(quizXib: Quiz){
        lblXib.text = quizXib.level
        imageXib.image = UIImage(named: quizXib.imageLevel)
    }
    
}
