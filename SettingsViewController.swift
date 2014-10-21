//
//  SettingsViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/20/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var settingsScroll: UIScrollView!
    @IBOutlet var imageView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        settingsScroll.delegate = self
        settingsScroll.contentSize = CGSize (width: settingsScroll.frame.size.width, height: settingsScroll.frame.size.height)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
