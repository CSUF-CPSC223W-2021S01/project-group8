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
    
    var profileNames: [Profile] =
    [
        Profile("B", 2, 120, 20, "Male"),
        Profile("G", 2, 100, 20, "Male"),
        Profile("K", 1.6, 111, 19, "Male"),
        Profile("F", 2.1, 95, 20, "Male"),
        Profile("J", 1.89, 97.5, 21, "Male")
    ]
    
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
        pickerView.reloadComponent(1)
    }
}

