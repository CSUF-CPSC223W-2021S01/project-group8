//
//  UserProfile.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/22/21.
//

import Foundation

struct Profile
{
    var height: Double
    var weight: Double
    var mybmi: BMI
    
    init(_ height: Double, _ weight: Double)
    {
        self.height = height
        self.weight = weight
        mybmi = BMI(height, weight)
    }
}
