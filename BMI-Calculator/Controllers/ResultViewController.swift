//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Алексей Гуляев on 06.08.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiResult: String = "Что то пошло не так"
    var advice: String = "Что то пошло не так"
    var color: UIColor = .red

    @IBOutlet weak var bmiVolumeLabel: UILabel!
    @IBOutlet weak var recomendationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            bmiVolumeLabel.text = bmiResult
            recomendationLabel.text = advice
            view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
