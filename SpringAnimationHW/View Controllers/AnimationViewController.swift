//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var settingsLabel: UILabel! {
        didSet {
            settingsLabel.text = animationSettings.description
        }
    }

    private var animationSettings = Animation.getRandomAnimation()
    
    @IBAction func animationButtonTapped(_ sender: UIButton) {
        settingsLabel.text = animationSettings.description
        launchViewAnimation()
        animationSettings = Animation.getRandomAnimation()
        sender.setTitle("Run \(animationSettings.currentAnimation)", for: .normal)
    }
    
    private func launchViewAnimation() {
        springAnimationView.animation = animationSettings.currentAnimation
        springAnimationView.curve = animationSettings.currentCurve
        springAnimationView.force = animationSettings.currentForce
        springAnimationView.damping = animationSettings.currentDamping
        springAnimationView.velocity = animationSettings.currentVelocity
        springAnimationView.animate()
    }

}

