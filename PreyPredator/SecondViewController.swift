//
//  SecondViewController.swift
//  PreyPredator
//
//  Created by William Daniels on 5/20/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    @IBOutlet weak var zebra: UISlider!
    @IBOutlet weak var salmon: UISlider!
    @IBOutlet weak var ringedSeal: UISlider!
    @IBOutlet weak var mice: UISlider!
    
  
    @IBAction func preySlider(_ sender: UISlider) {
        brain.zebra = Double(zebra.value)
        brain.salmon = Double(salmon.value)
        brain.ringedSeal = Double(ringedSeal.value)
        brain.mice = Double(mice.value)
    }
    
    
    //Updates the prey vs. predator brain
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

