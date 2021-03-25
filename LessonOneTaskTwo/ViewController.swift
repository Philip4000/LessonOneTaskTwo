//
//  ViewController.swift
//  LessonOneTaskTwo
//
//  Created by Philip Noskov on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var redColorView: UIView!
    @IBOutlet private weak var yellowColorView: UIView!
    @IBOutlet private weak var greenColorVeiw: UIView!
    @IBOutlet private weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorVeiw.alpha = 0.3
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorVeiw.layer.cornerRadius = greenColorVeiw.frame.width / 2
    }

    @IBAction private func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redColorView.alpha == 0.3 {
            redColorView.alpha = 1
        } else if redColorView.alpha == 1 {
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
        } else if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.3
            greenColorVeiw.alpha = 1
        } else {
            greenColorVeiw.alpha = 0.3
            redColorView.alpha = 1
        }
    }
    
}

