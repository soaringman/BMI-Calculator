//
//  CalculateViewController.swift
//  BMI-Calculator
//
//  Created by Алексей Гуляев on 06.08.2022.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculateModel = Calculate()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderLabel: UISlider!
    @IBOutlet weak var weightSliderLabel: UISlider!
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateModel.height = heightSliderLabel.value
        calculateModel.weight = weightSliderLabel.value

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = calculateModel.getBmiValue()
            destinationVC.advice = calculateModel.getAdvice()
            destinationVC.color = calculateModel.getColor()
        }
    }
}
