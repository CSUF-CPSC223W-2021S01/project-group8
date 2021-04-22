//
//  UserProfile.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/22/21.
//

import Foundation

struct Profile
{
    var name: String
    var measurments: [String]
    var height: Double
    var weight: Double
    var age: Double
    var sex: String
    var mybmi: BMI
    var mybmr: BMR
//
    init(_ name: String, _ height: Double, _ weight: Double, _ age: Double, _ sex: String)
    {
        self.name = name
        self.height = height
        self.weight = weight
        self.age = age
        self.sex = sex
        mybmi = BMI(height, weight)
        mybmr = BMR(height, weight, age)
        measurments = ["Sex:\(sex)", "Weight: \(weight)", "Height: \(height)", "Age: \(age)", "BMI: \(mybmi.display())", "BMR: \(mybmr.display())"]
    }
    
    //For debugging
    func display()
    {
        print("Name: \(name)\nAge: \(age)\n")
    }
}
