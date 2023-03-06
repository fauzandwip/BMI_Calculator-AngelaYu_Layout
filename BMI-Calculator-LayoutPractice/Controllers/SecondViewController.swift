//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Fauzan Dwi Prasetyo on 06/03/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiLabel = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .cyan
        
        let label = UILabel()
        label.text = bmiLabel
        label.frame = CGRect(x: 0, y: 0, width: 1000, height: 500)
        view.addSubview(label)
    }
    

}
