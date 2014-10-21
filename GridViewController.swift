//
//  GridViewController.swift
//  carousel
//
//  Created by diane cronenwett on 10/20/14.
//  Copyright (c) 2014 dianesorg. All rights reserved.
//

import UIKit

class GridViewController: UIViewController {

    @IBOutlet weak var feedScroll: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrubberView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        feedScroll.contentSize = imageView.frame.size
       // feedScroll.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 60, right: 0)
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
