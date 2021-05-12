//
//  Calculations.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/22/21.
//

import Foundation
//
// struct BMI
// {
//
//    var height: Double
//    var weight: Double
//    var bmi: Double
//    var age: Double
//    var personbmr: Double
//    var male: Bool
//    var daysofExerc: Int
//    var dailyCal: Double
//    var workoutcals: Double
//    var exWeight: Double
//
//    init(_ height: Double, _ weight: Double, _ age: Double, _ daysofExerc: Int, _ dailyCal: Double, _ personbmr: Double, _male: Bool, _ workoutcals: Double, _ exWeight: Double)
//    {
//        self.height = height
//        self.weight = weight
//        self.age = age
//        self.dailyCal = dailyCal
//        self.daysofExerc = daysofExerc
//        self.personbmr = personbmr
//        self.male = false
//        self.workoutcals = workoutcals
//        self.exWeight = exWeight
//
//        bmi = weight/(height*height)
//    }
//
//    func display() -> String
//    {
//        return "\(bmi)"
//
//    }
//    mutating func bmr() -> Double
//    {
//
//        if male == true {
//            personbmr =   66 + (6.3 * weight) + (12.9 * height) - (6.8 * age)
//        }
//        else if male == false {
//            personbmr = 655 + (4.3 * weight) + (4.7 * height) - (4.7 * age)
//    }
//
//        return personbmr
//    }
//    mutating func dailyCalories() -> Double {
//        switch daysofExerc{
//        case 1...3:
//         dailyCal = personbmr * 1.375
//            return dailyCal
//        case 3...5:
//            dailyCal = personbmr * 1.55
//            return dailyCal
//        case 6...7:
//        dailyCal = personbmr * 1.725
//        return dailyCal
//        default: dailyCal = personbmr * 1.2
//           return dailyCal
//
//        }
//    }
//    // calorie intakes based on http://www.checkyourhealth.org/eat-healthy/cal_calculator.php
//
//
//    mutating func workoutcalc()  -> Double
//    {
//        var weightconv: Double
//        weightconv = weight * 3500
//        exWeight = (weightconv - (workoutcals) ) * 3500 // Expected Weight = Weight (in calories) - (total weekly workout calories) multiplied by 3500 to return weight in lbs
//        return exWeight
//    }
//
//
//
// }
//
//
// let defaults = UserDefaults.standard
//// https://youtu.be/U6odvRpv6SA https://www.youtube.com/watch?v=XzWBT6lIB3A
