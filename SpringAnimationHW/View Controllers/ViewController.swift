//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var settingsLabel: UILabel!

    var animationSettings = AnimationSettings()
    
    @IBAction func animationButtonTapped(_ sender: UIButton) {
        updateSettingsLabel()
        launchViewAnimation(springAnimationView)
        animationSettings.getNewSettings()
        sender.setTitle("Run \(animationSettings.currentAnimation)", for: .normal)
    }
    
    private func launchViewAnimation(_ view: SpringView) {
        view.animation = animationSettings.currentAnimation
        view.curve = animationSettings.currentCurve
        view.force = animationSettings.currentForce
        view.damping = animationSettings.currentDamping
        view.velocity = animationSettings.currentVelocity
        
        view.animate()
    }
    
    private func updateSettingsLabel() {
        settingsLabel.text = """
        Preset: \(animationSettings.currentAnimation)
        Curve: \(animationSettings.currentCurve)
        Force: \(String(format: "%.2f", animationSettings.currentForce))
        Damping: \(String(format: "%.2f", animationSettings.currentDamping))
        Velocity: \(String(format: "%.2f", animationSettings.currentVelocity))
        """
    }
}

