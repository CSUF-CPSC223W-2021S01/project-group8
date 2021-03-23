//
//  ViewController.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/10/21.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var userBMI: UILabel!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        userBMI.text = ""
    }

    @IBAction func calculateBMI(_ sender: Any)
    {
        let height = Double(inputHeight.text!)!
        let weight = Double(inputWeight.text!)!

        let userProfile = Profile(height, weight)

        userBMI.text = "\(userProfile.mybmi.display())"
    }
}

