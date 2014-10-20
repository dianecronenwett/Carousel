//
//  IntroScrollViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/19/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class IntroScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var introScroll: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        // Do any additional setup after loading the view.
       introScroll.delegate = self
      introScroll.contentSize = imageView.image!.size

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        func scrollViewDidScroll(scrollView: UIScrollView!) {
            // This method is called as the user scrolls
        }
        
        func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
            
        }
        
        func scrollViewDidEndDragging(scrollView: UIScrollView!,
            willDecelerate decelerate: Bool) {
                // This method is called right as the user lifts their finger
        }
        
        func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
            // This method is called when the scrollview finally stops scrolling.
        }
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
