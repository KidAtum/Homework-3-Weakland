//
//  ViewController.swift
//  Homework 3 Weakland
//
//  Created by Lucas Weakland on 2/14/20.
//  Copyright © 2020 Lucas Weakland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stickmanView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var background: UIImageView!
    
    
    
    @IBAction func backgroundButton(_ sender: Any) {
        if (background.isHidden == true){
            background.isHidden = false
        } else
        {
            background.isHidden = true
        }
    }
    
    
    
    
    
    @IBAction func toggleButton(_ sender: Any) {
        if (stickmanView.isAnimating)
        {
            stickmanView.stopAnimating()
        } else
        {
            stickmanView.startAnimating()
        }
    }
    
    
    @IBAction func setSpeed(_ sender: Any) {
        stickmanView.animationDuration=TimeInterval(2.0-speedSlider.value)
        stickmanView.startAnimating()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hopAnimation: [UIImage] = [
                   UIImage(named: "Image 1")!,
                   UIImage(named: "Image 2")!,
                   UIImage(named: "Image 3")!,
                   UIImage(named: "Image 4")!,
                   UIImage(named: "Image 5")!,
                   UIImage(named: "Image 6")!,
                   UIImage(named: "Image 7")!,
                   UIImage(named: "Image 8")!,
                   UIImage(named: "Image 9")!,
                   UIImage(named: "Image 10")!,
                   UIImage(named: "Image 11")!,
                   ]
        
        
        
        stickmanView.animationImages=hopAnimation
        stickmanView.animationDuration=1.0
        
        
    }


}

