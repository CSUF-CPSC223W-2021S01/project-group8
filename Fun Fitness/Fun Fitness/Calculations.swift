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
