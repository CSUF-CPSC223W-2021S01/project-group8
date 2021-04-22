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
    
    
    var data: [Profile] = []
    
    
    @IBAction func profileSubmit(_ sender: Any)
    {
            let name = String(nameTextField.text!)
            let height = Double(heightTextField.text!)!
            let weight = Double(weightTextField.text!)!
            let age = Double(ageTextField.text!)!
            let sex = String(sexTextField.text!)
            data.append(Profile(name, height, weight, age, sex))
        
        data[0].display()
    }
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//
//        segue.destination =
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
}
