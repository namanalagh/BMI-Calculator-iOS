//
//  ViewController.swift
//  BMI-Exercise 4
//
//  Created by Naman Alagh on 10/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightInputField: UITextField!
    

    @IBOutlet weak var heightInputField: UITextField!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sharedBMI = bmi
        
        let destinationVC = segue.destination as! BMIViewController
        destinationVC.bmi = sharedBMI!
    }
    public var bmi: Double!
    
    public var bmiInput: DataStore!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        guard let unwrappedW = Double((weightInputField.text!)), let unwrappedH = Double(heightInputField.text!) else {
            return
        }
        bmiInput = DataStore(weight: unwrappedW, height: unwrappedH)
        bmi = (bmiInput.weight)/(bmiInput.height*bmiInput.height)
    }
    
}

