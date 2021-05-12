//
//  EditProfileViewController.swift
//  Fun_Fitness
//
//  Created by Brandon Capparelli on 5/11/21.
//

import UIKit

class EditProfileViewController: UIViewController
{
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    
    let main = ViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func submit(_ sender: Any)
    {
        currentProfile.name = String(nameTextField.text!)
        currentProfile.height = Double(heightTextField.text!)!
        currentProfile.weight = Double(weightTextField.text!)!
        currentProfile.age = Double(ageTextField.text!)!

        profileNames.save()
        main.pickerView.reloadAllComponents()
        currentProfile.display()
        dismiss(animated: true, completion: nil)
    }
}
