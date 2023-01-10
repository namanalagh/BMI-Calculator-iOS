//
//  BMIViewController.swift
//  BMI-Exercise 4
//
//  Created by Naman Alagh on 10/01/23.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var bmiDisplay: UILabel!
    
    @IBOutlet weak var healthTip: UILabel!
    var vc = ViewController(nibName: "View Controller", bundle: nil)
    var bmi = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiDisplay.text = "Your BMI is \(String(format: "%.2f", bmi))"
        updateUI()
    }
    
    func updateUI() {
        if bmi <= 18 {
            healthTip.text = "You're underweight! Try maintaining a healthier and filling diet."
        } else if bmi > 18 && bmi < 25 {
            healthTip.text = "You have the ideal BMI! Keep eating healthy and exercising regularly!"
        } else {
            healthTip.text = "You're overweight! Try eating healthier and exercising."
        }
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
