//
//  SignInViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/19/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet var backButton: UITapGestureRecognizer!
   
    @IBAction func backButton(sender: AnyObject) {
         navigationController!.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
