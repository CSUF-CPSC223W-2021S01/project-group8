//
//  EditProfileViewController.swift
//  Fun_Fitness
//
//  Created by Frankie Ocegueda on 5/12/21.
//

import Foundation
import UIKit

class EditProfileViewController: UIViewController {
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileHeight: UITextField!
    @IBOutlet weak var profileWeight: UITextField!
    @IBOutlet weak var profileAge: UITextField!
    @IBOutlet weak var profileSex: UITextField!
    let main: ViewController = ViewController()
    let myProf: MyProfileViewController = MyProfileViewController()
    @IBAction func submit(_ sender: Any) {
        let tempHeight = Double(profileHeight.text!)
        let tempWeight = Double(profileWeight.text!)
        let tempAge = Double(profileAge.text!)
        let tempSex = profileSex.text
        if let height = tempHeight {currentProfile.height = height}
        if let weight = tempWeight {currentProfile.weight = weight}
        if let age = tempAge {currentProfile.age = age}
        if let sex = tempSex {if sex != "" {currentProfile.sex = sex}}
        currentProfile.mybmi = BMI(currentProfile.height, currentProfile.weight)
        currentProfile.mybmr = BMR(currentProfile.height, currentProfile.weight, currentProfile.age)
        profileNames.profiles[currentProfilePos] = currentProfile
        profileNames.save()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        profileName.text = currentProfile.name
    }
}
