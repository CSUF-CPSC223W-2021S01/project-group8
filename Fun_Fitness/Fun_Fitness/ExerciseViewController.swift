//
//  ExerciseViewController.swift
//  Fun_Fitness
//
//  Created by Brandon Capparelli on 5/5/21.
//

import UIKit

class ExerciseViewController: UIViewController
{
    @IBOutlet var burnedField: UITextField!
    @IBOutlet var consumedField: UITextField!
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var userDate: UITextField! // not in use
    
    var main = ViewController()
    
    let datePicker = UIDatePicker()
    
    @IBAction func didTapEnter(_ sender: Any)
    {
        var label = outputLabel
        let userBMR: Double = profileNames.profiles[main.pickerView.selectedRow(inComponent: 0)].mybmr.display()
        let burned = Double(burnedField.text!)! + userBMR
        let consumed = Double(consumedField.text!)!
        // if userBMR
        
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
        // createDate()
    }
  
    // *********************************************************
    // Future addition
    // *********************************************************

//    func createDate()
//    {
//        let toolbar = UIToolbar()
//        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
//
//        toolbar.sizeToFit()
//        toolbar.setItems([done], animated: true)
//
//        userDate.inputView = datePicker
//        datePicker.datePickerMode = .date
//        datePicker.frame.size = CGSize(width: 50, height: 250)
//    }
//
//    @objc func donePressed()
//    {
//        let format = DateFormatter()
//        format.dateStyle = .medium
//        format.timeStyle = .none
//
//        userDate.text = format.string(from: datePicker.date)
//        self.view.endEditing(true)
//    }
}
