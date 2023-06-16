//
//  AnimationSettings.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import Foundation
import SpringAnimation

struct AnimationSettings {
    
    var currentAnimation: String
    var currentCurve: String
    
    mutating func getNewSettings() {
        let data = SpringInfoStore.shared
        
        currentAnimation = data.animations.randomElement() ?? "shake"
        currentAnimation = data.curves.randomElement() ?? "easeIn"
    }
}
