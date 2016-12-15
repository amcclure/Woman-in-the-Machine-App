//
//  Credits.swift
//  Man in the Machine
//
//  Created by Adrian McClure on 6/11/16.
//  Copyright © 2016 Adrian McClure. All rights reserved.
//

import Foundation
import UIKit


class Credits:UIViewController{
    @IBOutlet weak var adrian: CLTypingLabel!
    @IBOutlet weak var audrey: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let adrianText = "Main Coder & Storyline Assistant - Adrian McClure"
        let audreyText = "Main Storyline Writer                            - Audrey McClure"
        self.adrian.text = adrianText
        self.audrey.text = audreyText
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    
}