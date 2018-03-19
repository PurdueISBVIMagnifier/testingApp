//
//  SplitController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit

class SplitController: UIViewController
{
  //IB INITIALIZATIONS
  @IBOutlet weak var splitWebView: UIWebView!
  @IBOutlet weak var splitImageView: UIImageView!
  
  override func viewDidLoad()
  {
        super.viewDidLoad()
    //Sets URL string
    
    //IP ADDRESSES USED
    //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081 //10.160.165.62:8081  //128.211.222.119:8081
    let url = NSURL (string: "http://128.46.121.195:8081/");
    
    //Makes http Request
    let request = NSURLRequest(url: url! as URL);
    
    //Loads http request into webView on application
    splitWebView.loadRequest(request as URLRequest);

    
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
      
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
