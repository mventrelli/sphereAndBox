//
//  ContentView.swift
//  sphereAndBox
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var radius: String = ""
    @State private var sphereVolume: Double = 0.0
    @State private var sphereSurfaceArea: Double = 0.0
    @State private var cubeVolume: Double = 0.0
    @State private var cubeSurfaceArea: Double = 0.0
    

    var body: some View {
        VStack {
            Text("Enter the radius of the sphere:")
            TextField("Radius", text: $radius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {self.calculate()
                
            }) {
                Text("Calculate")
            }
            HStack{
                Text("The volume of the sphere is: ")
                Text("\(String(format: "%.2f", sphereVolume))")
                Text("The surface area of the sphere is: ")
                Text("\(String(format: "%.2f", sphereSurfaceArea))")
            }.padding(.top, 10)
            HStack{
                Text("The volume of the cube is: ")
                Text("\(String(format: "%.2f", cubeVolume))")
                Text("The surface area of the cube is: ")
                Text("\(String(format: "%.2f", cubeSurfaceArea))")
            }.padding(.top, 10)
        }
    }
    
    
    func calculate() {
        if let r = Double(self.radius) {
            
           var sphereParameters = SphereParameters()
            sphereParameters.radius = r
            
            self.sphereVolume = sphereParameters.calculateVolumeOfSphere()
            self.sphereSurfaceArea = sphereParameters.calculateSurfaceAreaOfSphere()
            self.cubeVolume = pow(r*2, 3)
            self.cubeSurfaceArea = 6 * pow(r*2, 2)
            var cubeParameters = CubeParameters()
             sphereParameters.radius = r
             
             self.sphereVolume = sphereParameters.calculateVolumeOfSphere()
             self.sphereSurfaceArea = sphereParameters.calculateSurfaceAreaOfSphere()
             self.cubeVolume = pow(r*2, 3)
             self.cubeSurfaceArea = 6 * pow(r*2, 2)
        }
        
    }
    
    //Use Box instead of cube*********************
}
