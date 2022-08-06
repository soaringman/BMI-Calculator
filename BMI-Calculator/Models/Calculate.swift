//
//  Calculate.swift
//  BMI-Calculator
//
//  Created by Алексей Гуляев on 06.08.2022.
//

import UIKit

struct Calculate {
    var height: Float = 0.0
    var weight: Float = 0.0
    var bmiValue: BMI?
    
    mutating func getBmiValue() -> String {
        calculateBmi()
        let bmiTo2DecimalPlace = String(format: "%.2f", bmiValue?.value ?? 0.0)
        return bmiTo2DecimalPlace
    }
    
    mutating func calculateBmi() {
        let bmiValue = self.weight / pow(self.height, 2)
        
        if bmiValue < 18.5 {
            self.bmiValue = BMI(value: bmiValue, advice: "Еште больше мучного", color: UIColor.blue)
        } else if bmiValue > 24.9 {
            self.bmiValue = BMI(value: bmiValue, advice: "Еште больше зелени", color: UIColor.red)
        } else {
            self.bmiValue = BMI(value: bmiValue, advice: "У вас все в норме", color: UIColor.green)
        }
    }
    
    func getAdvice() -> String {
       return bmiValue?.advice ?? "Не могу показать правильный совет"
    }
    
    func getColor() -> UIColor {
       return bmiValue?.color ?? .red
    }
}
