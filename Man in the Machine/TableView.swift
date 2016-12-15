//
//  TableView.swift
//  Woman in the Machine
//
//  Created by Adrian McClure on 7/5/16.
//  Copyright © 2016 Adrian McClure. All rights reserved.
//

import Foundation
import UIKit

class TableView: UITableViewController{


    @IBOutlet var achievments: UITableView!
    @IBOutlet weak var reset: UIButton!
    
    var data = ["Hello World-", "To the Right-","To the Left-","Pit Stop-","Keep at it-","var Jane = nil-","Know your enemy-","Freind or Foe-","Sent-","Pass-","Freedom-","Interesting Hobby-","It's Allen-","It's Jackson-","You are the winner!-"]
    var data2 = ["Met Jane", "Went Twords the Light (Right)","Went Twords the Light (Left)","Tell Jane to Rest","Tell Jane to keep moving","You killed Jane","Asked about Jackson","Ask about Allen","Sent an SOS out","Did not send a SOS","Made it out!","Check Allen's computer","Blamed Allen","Blammed Jackson","Finish Jane's Story"]
    override func viewDidLoad() {
       checkAchieve()
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func resetPress(sender: AnyObject){
                let refreshAlert = UIAlertController(title: "Achievment Reset", message: "All Achievments will be reset.", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
        self.removeAchievments()
    
        }))
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action: UIAlertAction!) in
        }))
        presentViewController(refreshAlert, animated: true, completion: nil)
       
        
    }

   override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.achievments.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.achieve.text = data[indexPath.row]
        cell.info.text = data2[indexPath.row]
        cell.checkBox.image = UIImage(named: "unchecked_box.png")
        var count = 0
       // let load = loadDefaults()
       var achieve = achieveDefaults(count)
        let row = indexPath.row
        switch row {
        case 0:
            if(achieve == true){
            cell.checkBox.image = UIImage(named:  "checked_box2.png")
            }
            else if(achieve == false){
                print("case 0 false")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
            }
        case 1:
            count = 1
             achieve = achieveDefaults(count)
            if(achieve == true){
           cell.checkBox.image = UIImage(named: "checked_box2.png")
            }
           else if(achieve == false){
                print("case 1 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
            }
        case 2:
            let count = 2
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
            }
            else if(achieve == false){
                print("case 2 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
            }
        case 3:
            let count = 3
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
           else if(achieve == false){
                print("case 3 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 4:
            let count = 4
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 4 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 5:
            let count = 5
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 5 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 6:
            let count = 6
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 6 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 7:
            let count = 7
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 7 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 8:
            let count = 8
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 8 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 9:
            let count = 9
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 9 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 10:
            let count = 10
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 10 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 11:
            let count = 11
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 11 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 12:
            let count = 12
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 12 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 13:
            let count = 13
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 13 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        case 14:
            let count = 14
            achieve = achieveDefaults(count)
            if(achieve == true){
                cell.checkBox.image = UIImage(named: "checked_box2.png")
                achieve = achieveDefaults(count)
            }
            else if(achieve == false){
                print("case 14 false®")
                cell.checkBox.image = UIImage(named: "unchecked_box.png")
                achieve = achieveDefaults(count)
            }
        default:
            cell.checkBox.image = UIImage(named: "unchecked_box.png")
        }
        return cell
    }

 override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
    func achieveDefaults(count: Int) -> Bool{
        if(count == 0){
        let defaults = NSUserDefaults.standardUserDefaults()
        let load = defaults.objectForKey("A1") as! Bool
        return load
        }
        if(count == 1){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A2") as! Bool
            return load
        }
        if(count == 2){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A3") as! Bool
            return load
        }
        if(count == 3){
            let defaults = NSUserDefaults.standardUserDefaults()
                let load = defaults.objectForKey("A4") as! Bool
                return load
        }
        if(count == 4){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A5") as! Bool
            return load
        }
        if(count == 5){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A6") as! Bool
            return load
        }
        if(count == 6){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A7") as! Bool
            return load
        }
        if(count == 7){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A8") as! Bool
            return load
        }
        if(count == 8){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A9") as! Bool
            return load
        }
        if(count == 9){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A10") as! Bool
            return load
        }
        if(count == 10){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A11") as! Bool
            return load
        }
        if(count == 11){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A12") as! Bool
            return load
        }
        if(count == 12){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A13") as! Bool
            return load
        }
        if(count == 13){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A14") as! Bool
            return load
        }
        if(count == 14){
            let defaults = NSUserDefaults.standardUserDefaults()
            let load = defaults.objectForKey("A15") as! Bool
            return load
        }
        else{
            return false
        }
        
    }
    
    func removeAchievments(){
        let A1 = false, A2 = false, A3 = false, A4 = false, A5 = false, A6 = false, A7 = false, A8 = false, A9 = false, A10 = false, A11 = false, A12 = false, A13 = false, A14 = false, A15 = false
        let defaults = NSUserDefaults.standardUserDefaults()
        let a = defaults.objectForKey("A1") as! Bool
        if(a == true){
        defaults.setObject(A1, forKey: "A1")
        defaults.setObject(A2, forKey: "A2")
        defaults.setObject(A3, forKey: "A3")
        defaults.setObject(A4, forKey: "A4")
        defaults.setObject(A5, forKey: "A5")
        defaults.setObject(A6, forKey: "A6")
        defaults.setObject(A7, forKey: "A7")
        defaults.setObject(A8, forKey: "A8")
        defaults.setObject(A9, forKey: "A9")
        defaults.setObject(A10, forKey: "A10")
        defaults.setObject(A11, forKey: "A11")
        defaults.setObject(A12, forKey: "A12")
        defaults.setObject(A13, forKey: "A13")
        defaults.setObject(A14, forKey: "A14")
        defaults.setObject(A15, forKey: "A15")
        defaults.synchronize()
        }
    }
    
 
    
    func checkAchieve(){
       
        let A1 = false, A2 = false, A3 = false, A4 = false, A5 = false, A6 = false, A7 = false, A8 = false, A9 = false, A10 = false, A11 = false, A12 = false, A13 = false, A14 = false, A15 = false
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if(defaults.objectForKey("A1") == nil){
            defaults.setObject(A1, forKey: "A1")
            let saveA1 = defaults.objectForKey("A1") as! Bool
            print("SAVED A1: ",saveA1)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A2") == nil){
            defaults.setObject(A2, forKey: "A2")
            let saveA2 = defaults.objectForKey("A2") as! Bool
            print("SAVED A2: ",saveA2)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A3") == nil){
            defaults.setObject(A3, forKey: "A3")
            let saveA3 = defaults.objectForKey("A3") as! Bool
            print("SAVED A3: ",saveA3)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A4") == nil){
            defaults.setObject(A4, forKey: "A4")
            let saveA4 = defaults.objectForKey("A4") as! Bool
            print("SAVED A4: ",saveA4)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A5") == nil){
            defaults.setObject(A5, forKey: "A5")
            let saveA5 = defaults.objectForKey("A5") as! Bool
            print("SAVED A5: ",saveA5)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A6") == nil){
            defaults.setObject(A6, forKey: "A6")
            let saveA6 = defaults.objectForKey("A6") as! Bool
            print("SAVED A6: ",saveA6)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A7") == nil){
            defaults.setObject(A7, forKey: "A7")
            let saveA7 = defaults.objectForKey("A7") as! Bool
            print("SAVED A7: ",saveA7)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A8") == nil){
            defaults.setObject(A8, forKey: "A8")
            let saveA8 = defaults.objectForKey("A8") as! Bool
            print("SAVED A8: ",saveA8)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A9") == nil){
            defaults.setObject(A9, forKey: "A9")
            let saveA9 = defaults.objectForKey("A9") as! Bool
            print("SAVED A9: ",saveA9)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A10") == nil){
            defaults.setObject(A10, forKey: "A10")
            let saveA10 = defaults.objectForKey("A10") as! Bool
            print("SAVED A10: ",saveA10)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A11") == nil){
            defaults.setObject(A11, forKey: "A11")
            let saveA11 = defaults.objectForKey("A11") as! Bool
            print("SAVED A11: ",saveA11)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A12") == nil){
            defaults.setObject(A12, forKey: "A12")
            let saveA12 = defaults.objectForKey("A12") as! Bool
            print("SAVED A12: ",saveA12)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A13") == nil){
            defaults.setObject(A13, forKey: "A13")
            let saveA13 = defaults.objectForKey("A13") as! Bool
            print("SAVED A13: ",saveA13)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A14") == nil){
            defaults.setObject(A14, forKey: "A14")
            let saveA14 = defaults.objectForKey("A14") as! Bool
            print("SAVED A14: ",saveA14)
            defaults.synchronize()
        }
        if(defaults.objectForKey("A15") == nil){
            defaults.setObject(A15, forKey: "A15")
            let saveA15 = defaults.objectForKey("A15") as! Bool
            print("SAVED A15: ",saveA15)
            defaults.synchronize()
        }else{
            print("All good")
        }
    }
 
    }

    
