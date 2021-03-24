//
//  Calculations.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/22/21.
//

import Foundation

struct BMI
{
    var height: Double
    var weight: Double
    var bmi: Double
    
    init(_ height: Double, _ weight: Double)
    {
        self.height = height
        self.weight = weight
        bmi = weight/(height*height)
    }
    
    func display() -> String
    {
        return "\(bmi)"
    }
}

struct BMR
{
    var height: Double
    var weight: Double
    var age: Double
    var bmr: Double
    
    init(_ height: Double, _ weight: Double, _ age: Double)
    {
        self.height = height
        self.weight = weight
        self.age = age
        bmr = ((10 * weight) + (6.25 * height) - (5 * age) + 5)
    }
    func display() -> String
    {
        return "\(bmr)"
    }
}
