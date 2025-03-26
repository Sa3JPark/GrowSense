//
//  CameraView.swift
//  GrowSense
//
//  Created by Jason Park on 3/10/25.
//


import SwiftUI

struct CameraView: View {
    @StateObject private var lightSensorManager = LightSensorManager()
    
    var body: some View {
        VStack {
            Text("Light Sensor")
                .font(.title)
                .padding()

            Text("ISO Brightness Estimate: \(lightSensorManager.brightness, specifier: "%.2f")")
                .font(.headline)
                .padding()

            Text("Light Level: \(lightSensorManager.lightCategory)")
                .font(.subheadline)
                .foregroundColor(.green)
                .padding()

            Button(action: {
                lightSensorManager.switchCamera()
            }) {
                Text("Toggle Camera")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Light Sensor")
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
