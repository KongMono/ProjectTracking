//
//  ViewController.swift
//  projecttracking
//
//  Created by Kong Mono on 12/19/15.
//  Copyright © 2015 River Engineering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "checkProjectschedule:", name: "Jobschedule", object: nil)
        
        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let isLoggedIn:Int = prefs.integerForKey("ISLOGGEDIN") as Int
        if isLoggedIn != 1 {
            self.performSegueWithIdentifier("Login", sender: self)
        }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkProjectschedule(notification:NSNotification){
        let view = self.storyboard!.instantiateViewControllerWithIdentifier("ProjDetail") as! ProjDetailViewController
        
        self.navigationController!.pushViewController(view, animated: true)
        
    }
}

