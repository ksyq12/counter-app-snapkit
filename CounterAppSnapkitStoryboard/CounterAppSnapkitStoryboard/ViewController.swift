//
//  ViewController.swift
//  CounterAppSnapkitStoryboard
//
//  Created by shinyoungkim on 3/26/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    
    private var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberLabel.text = "\(counter)"
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        counter -= 1
        numberLabel.text = "\(counter)"
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        counter += 1
        numberLabel.text = "\(counter)"
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        counter = 0
        numberLabel.text = "\(counter)"
    }
}

