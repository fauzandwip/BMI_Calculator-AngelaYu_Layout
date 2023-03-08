//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Fauzan Dwi Prasetyo on 08/03/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let result = String(format: "%.1f", bmi?.value ?? 0.0)
        return result
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        var advice: String
        var color: UIColor
        
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.5237951279, green: 0.8905587792, blue: 0.5077567101, alpha: 1)
        } else {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.9192066789, green: 0.3600854874, blue: 0.6788915396, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
}
