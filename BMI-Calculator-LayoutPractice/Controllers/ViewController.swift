//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//    Awalnya
//    @IBAction func slider(_ sender: UISlider) {
//        let height = heightSlider.value
//        let weight = weightSlider.value
//        heightValue.text = "\(String(format: "%.1f", height)) m"
//        weightValue.text = "\(Int(floor(weight))) kg"
//    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        bisa pakai ini
//        let weight = Int(weight)
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) kg"
    }
}

