//
//  AddProfileViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 4/21/21.
//

import UIKit

class AddProfileViewController: UIViewController, UINavigationControllerDelegate
{

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sexTextField: UITextField!
    
    let main: ViewController = ViewController()
    
    @IBAction func submit(_ sender: Any)
    {
        let name = String(nameTextField.text!)
        let height = Double(heightTextField.text!)!
        let weight = Double(weightTextField.text!)!
        let age = Double(ageTextField.text!)!
        let sex = String(sexTextField.text!)
        let new = Profile.init(name, height, weight, age, sex)
        new.display()
        main.profileSubmit(new)
        dismiss(animated: true, completion: nil)
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    // MARK: - Navigation
    

}
