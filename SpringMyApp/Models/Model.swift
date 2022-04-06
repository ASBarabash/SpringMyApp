//
//  Model.swift
//  SpringMyApp
//
//  Created by Alexandr Barabash on 05.04.2022.
//

import Foundation
import Spring

struct Animation {
    
    let preset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let forse: Double
    let duration: Double
    let delay: Double
    
    var presetDiscription: String {
        "preset: \(preset)"
    }
    
    var curveDiscription: String {
        "curve: \(curve)"
    }
    
    var forseDiscription: String {
        "forse: \(String(format: "%.02f", forse))"
    }
    
    var durationDiscription: String {
        "duration: \(String(format: "%.02f", duration))"
    }
    
    var delayDiscription: String {
        "delay: \(String(format: "%.02f", delay))"
    }
    static func getAnimation() -> Animation {
        
        let animation = Animation(
            preset: Spring.AnimationPreset.allCases.randomElement() ?? .shake,
            curve: Spring.AnimationCurve.allCases.randomElement() ?? .easeInBack,
            forse: Double.random(in: 0.3...0.7),
            duration: Double.random(in: 0.4...0.9),
            delay: Double.random(in: 0.2...0.6)
        )
        return animation
    }
}




