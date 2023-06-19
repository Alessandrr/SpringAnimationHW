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
    @IBOutlet var settingsLabel: UILabel!

    var animationSettings: AnimationSettings!
    
    override func viewDidLoad() {
        animationSettings = AnimationSettings.getNewSettings()
        settingsLabel.text = animationSettings.description
    }
    
    @IBAction func animationButtonTapped(_ sender: UIButton) {
        settingsLabel.text = animationSettings.description
        launchViewAnimation()
        animationSettings = AnimationSettings.getNewSettings()
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

