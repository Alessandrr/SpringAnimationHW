//
//  AnimationSettings.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import Foundation
import SpringAnimation

struct AnimationSettings {
    
    var currentAnimation: String = "shake"
    var currentCurve: String = "easeIn"
    
    mutating func getNewSettings() {
        let data = SpringInfoStore.shared
        
        currentAnimation = data.animations.randomElement() ?? "shake"
        currentAnimation = data.curves.randomElement() ?? "easeIn"
    }
}
