//
//  CodonViewController.swift
//  PreyPredator
//
//  Created by William Daniels on 5/23/17.
//  Copyright © 2017 William Daniels. All rights reserved.
//

import UIKit

class CodonViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var seqText: UITextField!
    
    @IBOutlet weak var codon: UILabel!
    
    
    @IBAction func sequence(_ sender: UITextField) {
        let codonBrain = CodonBrain(seq: seqText.text!.uppercased())
        codon.text = "Amino Acid: " + codonBrain.getCodon()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.seqText.delegate = self;
        seqText.autocorrectionType = .no
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
