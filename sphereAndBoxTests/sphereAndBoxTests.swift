//
//  sphereAndBoxTests.swift
//  sphereAndBoxTests
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import XCTest

final class sphereAndBoxTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testSphereVolume() throws {
        
        var sphereParameters = SphereParameters()
        sphereParameters.radius = 1.0
        
        var sphereVolume = sphereParameters.calculateVolumeOfSphere()
        var expectedValue = (4.0/3.0)*Double.pi
        XCTAssertEqual(expectedValue, sphereVolume, accuracy: 1e-14)
        
    }
    //Add same thing as above for SA and cube parameters
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
