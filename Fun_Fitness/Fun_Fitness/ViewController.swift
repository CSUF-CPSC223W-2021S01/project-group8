//
//  ViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/10/21.
//
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    

    @IBOutlet weak var profileField: UITextField!
    @IBAction func didTapEnter(_ sender: Any)
    {
        
    }
    
    @IBAction func didTapNewProfile(_ sender: Any)
    {

    }
    
    
    var pickerView = UIPickerView()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        profileField.inputView = pickerView
        profileField.textAlignment = .center
        profileField.placeholder = "Enter Profile"

        pickerView.reloadAllComponents()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return profileNames.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return profileNames[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        profileField.text = profileNames[row].name
        profileField.resignFirstResponder()
    }
    
    func profileSubmit(_ data: Profile)
    {
        profileNames.append(data)
        for profile in profileNames {
            profile.display()
        }
        print(profileNames.count)
        pickerView.reloadAllComponents()
    }
}

