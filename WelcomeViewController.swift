//
//  WelcomeViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/19/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScroll: UIScrollView!
    @IBOutlet weak var welcome1: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var backUpButtons: UIImageView!
    
    @IBAction func spinButtonAction(sender: AnyObject) {
//        var fadeInDuration= 2
        
//      spinButton.animationDidStart(<#anim: CAAnimation!#>)
        
       // UIView.animateWithDuration(2, animations: //{ () -> Void in
           // self.backUpButtons.alpha = 1
      //  })
       
        
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()

        
        welcomeScroll.delegate = self
        
        welcomeScroll.contentSize = CGSize (width: welcomeScroll.frame.size.width * 4, height: welcomeScroll.frame.size.height)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        
     // This method is called as the user scrolls
        
        // get offset = scrollView.contentOFfset.x
        var offset_x = welcomeScroll.contentOffset.x
        println(offset_x)
        
        // if offset > 640
        if offset_x >= 640 {
            backUpButtons.alpha = (offset_x - 640) / 320
            println(backUpButtons.alpha)
        }
        
        // alpha = (offset - 640) / 320
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
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
