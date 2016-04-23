//
//  ViewController.swift
//  Assignment3
//
//  Created by George Pantazis on 23/04/2016.
//  Copyright © 2016 PAN Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   override func viewDidLoad()
   {
      
      super.viewDidLoad()
      
      let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
      
      
      let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
      
      let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
      
      let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipes(_:)))
      
      rightSwipe.direction = .Right
      leftSwipe.direction = .Left
      upSwipe.direction = .Up
      downSwipe.direction = .Down
      
      view.addGestureRecognizer(rightSwipe)
      view.addGestureRecognizer(leftSwipe)
      view.addGestureRecognizer(upSwipe)
      view.addGestureRecognizer(downSwipe)

   }


   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   @IBOutlet weak var lblOutput: UILabel!
   @IBOutlet var swipeControl: UISwipeGestureRecognizer!
   
  
   func handleSwipes(sender:UISwipeGestureRecognizer)
   {
      

      if (sender.direction == .Right)
      {
         self.performSegueWithIdentifier("Seg2", sender: nil)
      }
      
      if (sender.direction == .Left)
      {
         DisplayError("HEY!", errorMsg: "You are meant to swipe right, not left.")
      }
      
      if (sender.direction == .Up)
      {
         DisplayError("HEY!", errorMsg: "You are meant to swipe right, not up.")
      }
      
      if (sender.direction == .Down)
      {
         DisplayError("HEY!", errorMsg: "You are meant to swipe right, not down.")
      }
   }
   
   @IBAction func showTableView(sender: AnyObject)
   {
      
      self.performSegueWithIdentifier("Seg3", sender: nil)
   }
   
   
   func DisplayError(errorTitle: String, errorMsg: String)
   {
      let InputError = UIAlertController(title: errorTitle, message: errorMsg, preferredStyle: UIAlertControllerStyle.Alert)
      
      let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
      
      InputError.addAction(okAction)
      
      self.presentViewController(InputError, animated: true, completion: nil)

   }
   
}

