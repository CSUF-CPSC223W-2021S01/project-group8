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
        if profileField.text != ""
        {
            
        }
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
        return profileNames.profiles.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        currentProfile = profileNames.profiles[row]
        currentProfilePos = row
        return profileNames.profiles[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        currentProfile = profileNames.profiles[row]
        currentProfilePos = row
        profileField.text = profileNames.profiles[row].name
        profileField.resignFirstResponder()
    }
    
    func profileSubmit(_ data: Profile)
    {
        profileNames.profiles.append(data)
        profileNames.save()
        pickerView.reloadAllComponents()
    }
}

