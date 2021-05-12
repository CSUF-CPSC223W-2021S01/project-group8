//
//  MyProfileViewController.swift
//  Fun_Fitness
//
//  Created by Brandon Capparelli on 5/6/21.
//

import Foundation
import UIKit

class MyProfileViewController: UIViewController
{
    @IBOutlet var userInfo: UILabel!
    
    var main = ViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        changeProfile()
    }
    
    func changeProfile()
    {
        let selectedProfile = currentProfile
        let name = "Name: \(String(selectedProfile.name))\n"
        let weight = "Weight: \(String(selectedProfile.weight))\n"
        let height = "Height: \(String(selectedProfile.height))\n"
        let age = "Age: \(String(selectedProfile.age))\n"
        let sex = "Sex: \(String(selectedProfile.sex))\n"
        let userBMI = "Your BMI: \(String(selectedProfile.mybmi.display()))\n"
        let userBMR = "Your BMR: \(String(selectedProfile.mybmr.display()))\n"
        
        userInfo.text = name + weight + height + age + sex + userBMI + userBMR
    }
}
