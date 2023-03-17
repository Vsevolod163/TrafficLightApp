//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Vsevolod Lashin on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func tapOnStartButton() {
        let alphaOfRedLight = round(redLightView.alpha * 10) / 10
        let alphaOfYellowLight = round(yellowLightView.alpha * 10) / 10
        let alphaOfGreenLight = round(greenLightView.alpha * 10) / 10
        
        startButton.setTitle("Next", for: .normal)
        
        if alphaOfYellowLight == 0.3 && alphaOfRedLight == 0.3 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else if alphaOfYellowLight == 0.3 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if alphaOfGreenLight == 0.3 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        }
    }
}

