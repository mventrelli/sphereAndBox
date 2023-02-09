//
//  cubeParameters.swift
//  sphereAndBox
//
//  Created by IIT PHYS 440 on 1/19/23.
//

import SwiftUI

class cubeParameters: NSObject {
    
    var radius = 0.0
    
    func calculateVolumeOfCube() -> Double {
        let volumeOfCube = pow(2*radius,3)
        return volumeOfCube
    }
 
    func calculateSurfaceAreaOfCube() -> Double {
        let surfaceAreaOfCube = pow(2*radius,2)*6
        return surfaceAreaOfCube
    }
    
    

}
