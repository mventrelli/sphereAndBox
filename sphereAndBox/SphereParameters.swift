//
//  SphereParameters.swift
//  sphereAndBox
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import SwiftUI

class SphereParameters: NSObject {
    
    var radius = 0.0
    
    func calculateVolumeOfSphere() -> Double {
        let volumeOfSphere = (4.0/3.0)*Double.pi*pow(radius, 3.0)
        return volumeOfSphere
    }
 
    func calculateSurfaceAreaOfSphere() -> Double {
        let surfaceAreaOfSphere = 4.0*Double.pi*pow(radius, 2.0)
        return surfaceAreaOfSphere
    }
    
    

}
