    //
    //  FirstViewController.swift
    //  PreyPredator
    //
    //  Created by William Daniels on 5/20/17.
    //  Copyright © 2017 William Daniels. All rights reserved.
    //
    
    import UIKit
    
    let brain = PreyPredatorBrain()
    
    class FirstViewController: UIViewController {
        
        
        
        
        @IBOutlet weak var tabBar: UITabBarItem!
        
        @IBOutlet weak var lion: UISlider!
        @IBOutlet weak var killerWhale: UISlider!
        @IBOutlet weak var polarBear: UISlider!
        @IBOutlet weak var redTailedHawk: UISlider!
        
        @IBAction func predSlider(_ sender: UISlider) {
            brain.lion = Double(lion.value)
            brain.killerWhale = Double(killerWhale.value)
            brain.polarBear = Double(polarBear.value)
            brain.redTailedHawk = Double(redTailedHawk.value)
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
    }
    
