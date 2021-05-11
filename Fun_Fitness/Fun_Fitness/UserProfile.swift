//
//  UserProfile.swift
//  Fun Fitness
//
//  Created by Brandon Capparelli on 3/22/21.
//

import Foundation

struct Profile: Codable
{
    var name: String
    var height: Double
    var weight: Double
    var age: Double
    var mybmi: BMI
    var mybmr: BMR

    init(_ name: String, _ height: Double, _ weight: Double, _ age: Double)
    {
        self.name = name
        self.height = height
        self.weight = weight
        self.age = age
        mybmi = BMI(height, weight)
        mybmr = BMR(height, weight, age)
    }
}
struct Profiles: Codable{
    var logins: [String: String]
    var profiles: [String: Profile]
    init(){
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let profileURL = documentsDirectory.appendingPathComponent("profiles").appendingPathExtension("plist")
        let loginURL = documentsDirectory.appendingPathComponent("logins").appendingPathExtension("plist")
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedProfileData = try? Data(contentsOf: profileURL), let tempProfiles = try? propertyListDecoder.decode([String:Profile].self, from: retrievedProfileData), let retrievedLoginData = try? Data(contentsOf: loginURL), let tempLogins = try? propertyListDecoder.decode([String:String].self, from: retrievedLoginData){
            profiles = tempProfiles
            logins = tempLogins
        } else {
            self.profiles = [:]
            self.logins = [:]
        }
    }
    mutating func modify(name: String, password: String, height: Double, weight: Double, age: Double) -> String{
        if profiles[name] != nil && password == logins[name]{
            profiles[name] = Profile(name, height, weight, age)
            return "Account has been modified"
        } else if profiles[name] != nil && password != logins[name] {
            return "Invalid Name and Password"
        } else {
            logins[name] = password
            profiles[name] = Profile(name, height, weight, age)
            return "New profile created"
        }
    }
    func get(name: String, password: String)->Profile?{
        guard password == logins[name] else{
            return nil
        }
        return profiles[name]
    }
    mutating func delete(name: String, password: String) -> String{
        guard password == logins[name] && profiles[name] != nil else{
            return "Invalid Combination"
        }
        profiles[name] = nil
        logins[name] = nil
        return "Profile Removed"
    }
    func save(){
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let profileURL = documentsDirectory.appendingPathComponent("profiles").appendingPathExtension("plist")
        let loginURL = documentsDirectory.appendingPathComponent("logins").appendingPathExtension("plist")
        let propertyListEncoder = PropertyListEncoder()
        if let encodedProfile = try? propertyListEncoder.encode(profiles), let encodedLogin = try? propertyListEncoder.encode(logins){
            try? encodedProfile.write(to: profileURL)
            try? encodedLogin.write(to: loginURL)
        }
    }
}
