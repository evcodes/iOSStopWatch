//
//  ViewController.swift
//  Stopwatch
//
//  Created by CaptainCode on 1/7/19.
//  Copyright © 2019 Captain Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stopwatchLabel: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    
    var model = StopwatchModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stopwatchLabel.text = "00:00:00"
        toggleButton.setTitle("Start", for: .normal)
        
        model.timeChanged = updateLabel(_:)
    }
    
    @IBAction func toggleStopwatch() {
        if model.isStarted{
            toggleButton.setTitle("Start", for: .normal)
        }else{
            toggleButton.setTitle("Stop", for: .normal)

        }
        model.toggleStopwatch()
    }
    func updateLabel(_ timeString:String) {
        stopwatchLabel.text = timeString
    }
}


