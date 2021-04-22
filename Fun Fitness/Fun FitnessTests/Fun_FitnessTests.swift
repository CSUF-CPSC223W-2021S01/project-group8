//
//  Fun_FitnessTests.swift
//  Fun FitnessTests
//
//  Created by Brandon Capparelli on 3/10/21.
//  Modified 3/23/21

@testable import Fun_Fitness
import XCTest

class Fun_FitnessTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testBMIInitializer1() {
        let testBMI = BMI(0, 0) // Testing
        XCTAssertEqual(testBMI.weight, 0)
        XCTAssertEqual(testBMI.height, 0)
        XCTAssertEqual(testBMI.bmi, 0)
    }

    func testBMIInitializer2() {
        let testBMI = BMI(0, 1)
        XCTAssertEqual(testBMI.bmi, 0)
    }

    func testBMIFucntions1() {
        let testBMI = BMI(1, 0)
        XCTAssertEqual(testBMI.bmi, 0)
        XCTAssertEqual(testBMI.display(), "0.0")
    }

    func testBMIFunctions2() {
        let testBMI = BMI(1, 1)
        XCTAssertEqual(testBMI.bmi, 1)
        XCTAssertEqual(testBMI.display(), "1.0")
    }

    func testBMIFunctions3() {
        let testBMI = BMI(10, 100)
        XCTAssertEqual(testBMI.bmi, 1)
        XCTAssertEqual(testBMI.display(), "1.0")
    }

    func testBMIFunctions4() {
        let testBMI = BMI(1.78, 110)
        XCTAssertEqual(testBMI.bmi, 34.71783865673526)
        XCTAssertEqual(testBMI.display(), "34.718")
    }

    func testBMRInitializer() {
        let testBMR = BMR(0, 0, 0) // Testing
        XCTAssertEqual(testBMR.weight, 0)
        XCTAssertEqual(testBMR.height, 0)
        XCTAssertEqual(testBMR.age, 0)
        XCTAssertEqual(testBMR.bmr, 5)
    }

    func testBMRFucntions1() {
        let testBMR = BMR(1, 0, 0)
        XCTAssertEqual(testBMR.bmr, 630)
        XCTAssertEqual(testBMR.display(), "630.0")
    }

    func testBMRFucntions2() {
        let testBMR = BMR(0, 1, 0)
        XCTAssertEqual(testBMR.bmr, 15)
        XCTAssertEqual(testBMR.display(), "15.0")
    }

    func testBMRFucntions3() {
        let testBMR = BMR(0, 0, 1)
        XCTAssertEqual(testBMR.bmr, 0)
        XCTAssertEqual(testBMR.display(), "0.0")
    }

    func testBMRFucntions4() {
        let testBMR = BMR(1.78, 110, 20)
        XCTAssertEqual(testBMR.bmr, 2117.5)
        XCTAssertEqual(testBMR.display(), "2117.5")
    }
    func testProfile(){
        let testProfile = Profile("Francisco", 1.78, 110, 20)
        XCTAssertEqual(testProfile.height, 1.78)
        XCTAssertEqual(testProfile.name, "Francisco")
        XCTAssertEqual(testProfile.weight, 110)
        XCTAssertEqual(testProfile.age, 20)
        XCTAssertEqual(testProfile.mybmi.display(), "34.718")
        XCTAssertEqual(testProfile.mybmr.display(), "2117.5")
    }
    func testProfilesInit(){
        let _ = Profiles()
    }
    func testProfilesModifyGetDelete(){
        var testProfiles = Profiles()
        XCTAssertEqual(testProfiles.modify(name: "Francisco", password: "12345", height: 1.78, weight: 110, age: 20), "New profile created")
        XCTAssertEqual(testProfiles.get(name: "Francisco", password: "12345")?.name , "Francisco")
        XCTAssertEqual(testProfiles.modify(name: "Francisco", password: "12345", height: 2.0, weight: 120, age: 37), "Account has been modified")
        XCTAssertEqual(testProfiles.get(name: "Francisco", password: "12345")?.height, 2.0)
        XCTAssertEqual(testProfiles.modify(name: "Francisco", password: "ABCDE" , height: 6.7, weight: 300, age: 7000), "Invalid Name and Password")
        XCTAssertNil(testProfiles.get(name: "blah", password: "blarg"))
        XCTAssertEqual(testProfiles.delete(name: "Francisco", password: "12345"), "Profile Removed")
        XCTAssertNil(testProfiles.get(name: "Francisco", password: "12345"))
    }
    func testProfilesSaveandLoad(){
        var testProfiles1 = Profiles()
        _ = testProfiles1.modify(name: "Francisco", password: "12345", height: 1.78, weight: 110, age: 20)
        testProfiles1.save()
        var testProfiles2 = Profiles()
        XCTAssertEqual(testProfiles1.get(name: "Francisco", password: "12345")?.name, testProfiles2.get(name: "Francisco", password: "12345")?.name)
    }
}
