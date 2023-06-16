//
//  ViewController.swift
//  SpringAnimationHW
//
//  Created by Aleksandr Mamlygo on 16.06.23.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    let animationSettings = AnimationSettings()

    @IBOutlet var springAnimationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func animationButtonTapped() {
        springAnimationView.animation = animationSettings.getAnimation()
        springAnimationView.curve = animationSettings.getCurve()
        springAnimationView.animate()
    }
    
}

