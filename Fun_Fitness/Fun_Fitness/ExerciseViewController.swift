//
//  ExerciseViewController.swift
//  Fun_Fitness
//
//  Created by Brandon Capparelli on 5/5/21.
//

import UIKit

class ExerciseViewController: UIViewController
{
    @IBOutlet weak var burnedField: UITextField!
    @IBOutlet weak var consumedField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var userDate: UITextField! //not in use
    
    var main: ViewController = ViewController()
    
    let datePicker = UIDatePicker()
    
    @IBAction func didTapEnter(_ sender: Any)
    {
        var label = outputLabel
        let userBMR: Double = profileNames.profiles[main.pickerView.selectedRow(inComponent: 0)].mybmr.display()
        let burned: Double = Double(burnedField.text!)! + userBMR
        let consumed = Double(consumedField.text!)!
        //if userBMR
        
        if (burned - consumed) >= 0
        {
            label?.text = "You burned \(burned - consumed) more calories \ntoday then you consumed.\nGreat Job!"
        }
        else
        {
            label?.text = "You consumed \(-(burned - consumed)) more calories \ntoday then you burned."
        }
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //createDate()
    }
}
