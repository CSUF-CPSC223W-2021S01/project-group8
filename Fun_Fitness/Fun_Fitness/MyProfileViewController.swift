//
//  MyProfileViewController.swift
//  Fun_Fitness
//
//  Created by Brandon Capparelli on 5/6/21.
//

import UIKit
import Foundation



class MyProfileViewController: UIViewController
{
    @IBOutlet weak var userInfo: UILabel!
    
    var main: ViewController = ViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        viewLoadSetup()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewLoadSetup()
    }
    func viewLoadSetup(){
        changeProfile(currentProfile)
    }
    
    func changeProfile(_ selectedProfile: Profile)
    {
        let name = "Name: \(String(selectedProfile.name))\n"
        let weight = "Weight: \(String(selectedProfile.weight))\n"
        let height = "Height \(String(selectedProfile.height))\n"
        let age = "Age: \(String(selectedProfile.age))\n"
        let sex = "Sex: \(String(selectedProfile.sex))\n"
        let userBMI = "Your BMI: \(String(selectedProfile.mybmi.display()))\n"
        let userBMR = "Your BMR: \(String(selectedProfile.mybmr.display()))\n"
        
        userInfo.text = name + weight + height + age + sex + userBMI + userBMR
    }
    
}
