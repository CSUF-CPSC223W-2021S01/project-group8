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
        changeProfile()
    }
    
    
    
    func changeProfile()
    {
        let selectedProfile = currentProfile
        let name = "\(String(selectedProfile.name))\n"
        let weight = "\(String(selectedProfile.weight))\n"
        let height = "\(String(selectedProfile.height))\n"
        let age = "\(String(selectedProfile.age))\n"
        let sex = "\(String(selectedProfile.sex))\n"
        let userBMI = "\(String(selectedProfile.mybmi.display()))\n"
        let userBMR = "\(String(selectedProfile.mybmr.display()))\n"
        
        userInfo.text = name + weight + height + age + sex + userBMI + userBMR
    }
    
}
