//
//  ViewController.swift
//  animation
//
//  Created by Matt Weems on 09/04/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     var counter = 1
     var timer = NSTimer()
     var isAnimating = false

    @IBOutlet var button: UIButton!
    @IBOutlet var image: UIImageView!
    @IBAction func animate(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            isAnimating = false
            button.setTitle("dance motherfucker", forState: UIControlState.Normal)
            
        } else {
            
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: Selector("animate"), userInfo: nil, repeats: true)
            isAnimating = true
            button.setTitle("stop bitch", forState: UIControlState.Normal)
           
            
        }
        
    }
    
    
    func animate() {
        if counter == 3 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }
        
        image.image = UIImage(named: "alien\(counter).png")

    }

}

