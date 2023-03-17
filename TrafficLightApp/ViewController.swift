//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Vsevolod Lashin on 17.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func tapOnStartButton() {
        let alphaOfRedLight = round(redLightView.alpha * 10) / 10
        let alphaOfYellowLight = round(yellowLightView.alpha * 10) / 10
        let alphaOfGreenLight = round(greenLightView.alpha * 10) / 10
        let lowAlpha: CGFloat = 0.3
        let hightAlpha: CGFloat = 1
        
        startButton.setTitle("Next", for: .normal)
        
        if alphaOfYellowLight == lowAlpha && alphaOfRedLight == lowAlpha {
            greenLightView.alpha = lowAlpha
            redLightView.alpha = hightAlpha
        } else if alphaOfYellowLight == lowAlpha {
            redLightView.alpha = lowAlpha
            yellowLightView.alpha = hightAlpha
        } else if alphaOfGreenLight == lowAlpha {
            yellowLightView.alpha = lowAlpha
            greenLightView.alpha = hightAlpha
        }
    }
}

