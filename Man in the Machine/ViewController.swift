//
//  ViewController.swift
//  Man in the Machine
//
//  Created by Adrian McClure on 5/23/16.
//  Copyright © 2016 Adrian McClure. All rights reserved.
//
import AudioToolbox
import UIKit
import AVFoundation
import GoogleMobileAds

class ViewController: UIViewController {


    
    @IBOutlet weak var startTitle: CLTypingLabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = "The Woman in the Machine"
        self.startTitle.text = title;
        loadDefaults();
        // Do any additional setup after loading the view, typically from a nib.
        //TEST AD "ca-app-pub-3940256099942544/2934735716"
        //ACTUAL AS "ca-app-pub-7664641648183143/8066917510"
        bannerView.adUnitID = "ca-app-pub-7664641648183143/8066917510"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    @IBAction func resetPress(sender: AnyObject){
        let defaults = NSUserDefaults.standardUserDefaults()
        let refreshAlert = UIAlertController(title: "Woman in the Machine", message: "All data will be lost.", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            defaults.removeObjectForKey("save")
            print("deleted");
            defaults.setObject(0, forKey: "save")
             self.startButton.setTitle("Start", forState: .Normal)
            
        }))
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action: UIAlertAction!) in
        }))
        presentViewController(refreshAlert, animated: true, completion: nil)
       // startButton.setTitle("Start", forState: .Normal)
        
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    func loadDefaults(){
        
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("save") as? Int
            if(load == nil){
            defaults.setObject(0, forKey: "save")
            }else if(load > 1){
            print("Loaded: ", load)
            startButton.setTitle("Continue", forState: .Normal)
        }
        
}
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
