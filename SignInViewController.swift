//
//  SignInViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/19/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var formScroll: UIScrollView!
    @IBOutlet weak var formView: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var activityIcon: UIActivityIndicatorView!
    
   
    @IBAction func signInButton(sender: AnyObject) {
       // println("foo")
        
//        logInButton.selected = true
        
        if (emailField.text == "") {
            // alert
            var alertView = UIAlertView(title: "Email is Required", message: "Please enter valid credentials", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
            return
        }
        if (passwordField.text == "") {
            // alert
            var alertView = UIAlertView(title: "Password Sucks", message: "Please enter valid credentials", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
            return
        }
        
        activityIcon.startAnimating()
        self.logInButton.enabled = false

        var alertView = UIAlertView(title: "Signing In...", message: "", delegate: nil, cancelButtonTitle: nil)
        alertView.show()
        delay(2) {
           // println("foo111")
            self.activityIcon.stopAnimating()
//            self.logInButton.selected = false
            self.logInButton.enabled = true

// App Segues need to be connected from the view to the view controller you want to segue to
            
            alertView.dismissWithClickedButtonIndex(0, animated: true)
            
            if(self.emailField.text == "d" && self.passwordField.text == "s") {
                self.performSegueWithIdentifier("app_segue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Sign In Failed", message: "Please enter valid credentials", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
            }
        }
    }
    
    @IBAction func backButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
   
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
       override func viewDidLoad() {
        super.viewDidLoad()

        // Keyboard registering of events
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        
        formScroll.contentOffset.y = formView.frame.origin.y
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        
        formScroll.contentOffset.y = 0
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
