//
//  AnimationSettings.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import Foundation

struct AnimationSettings {
    
    var currentAnimation: String
    var currentCurve: String

    var currentForce: Double
    var currentDamping: Double
    var currentVelocity: Double
    
    var description: String {
        """
        Preset: \(currentAnimation)
        Curve: \(currentCurve)
        Force: \(String(format: "%.2f", currentForce))
        Damping: \(String(format: "%.2f", currentDamping))
        Velocity: \(String(format: "%.2f", currentVelocity))
        """
    }
    
    static func getNewSettings() -> AnimationSettings {
        let data = SpringInfoStore.shared
        
        let animation = AnimationSettings(
            currentAnimation: data.animations.randomElement() ?? "shake",
            currentCurve: data.curves.randomElement() ?? "easeIn",
            currentForce: Double.random(in: 1...4.5),
            currentDamping: Double.random(in: 0...1),
            currentVelocity: Double.random(in: 0...1)
        )
        return animation
    }
}
