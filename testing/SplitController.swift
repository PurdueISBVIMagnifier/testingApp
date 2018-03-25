//
//  SplitController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit
import WebKit

class SplitController: UIViewController
{
  //VAR INITIALIZATIONS
  var sSImage : UIImage?
  
  //IB INITIALIZATIONS
  @IBOutlet weak var splitWebView: WKWebView!
  @IBOutlet weak var splitImageView: UIImageView!
  @IBOutlet var leftGest: UITapGestureRecognizer!
  @IBOutlet var rightGest: UITapGestureRecognizer!
  @IBOutlet var mainGest: UITapGestureRecognizer!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
    if sSImage != nil
    {
      print("Image is there")
      splitImageView.image = sSImage
    }
    //Sets URL string
    //IP ADDRESSES USED
    //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081 //10.160.165.62:8081  //128.211.222.119:8081
    let url = NSURL (string: "https://twitter.com/")
    
    //Makes http Request
    let request = NSURLRequest(url: url! as URL)
    
    //Loads http request into webView on application
    splitWebView.load(request as URLRequest)
    
   
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }

  @IBAction func leftGestAct(_ sender: UITapGestureRecognizer)
  {
    self.dismiss(animated: true, completion: nil)
  }
  
  @IBAction func rightGestAct(_ sender: UITapGestureRecognizer)
  {
    self.dismiss(animated: true, completion: nil)
  }
  
  @IBAction func mainGestAct(_ sender: UITapGestureRecognizer)
  {
    self.dismiss(animated: true, completion: nil)
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  

}
