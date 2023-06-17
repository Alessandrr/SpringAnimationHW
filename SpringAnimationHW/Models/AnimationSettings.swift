//
//  AnimationSettings.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import Foundation

struct AnimationSettings {
    
    var currentAnimation: String = "shake"
    var currentCurve: String = "easeIn"
    
    let minForce = 1.0
    let maxForce = 4.5
    var currentForce = 1.0
    
    let minDamping = 0.0
    let maxDamping = 1.0
    var currentDamping = 0.0
    
    let minVelocity = 0.0
    let maxVelocity = 1.0
    var currentVelocity = 1.0
    
    mutating func getNewSettings() {
        let data = SpringInfoStore.shared
        
        currentAnimation = data.animations.randomElement() ?? "shake"
        currentCurve = data.curves.randomElement() ?? "easeIn"
        currentForce = Double.random(in: minForce...maxForce)
        currentDamping = Double.random(in: minForce...maxForce)
        currentVelocity = Double.random(in: minVelocity...maxVelocity)
    }
}
