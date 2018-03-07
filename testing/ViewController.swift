//  ViewController.swift
//  testing
//
//  Created by Nicholas Rosato and Meriem Bounab on 3/1/18.
//  Copyright © 2018 Purdue EPICS ISBVI Magnifier Software Team. All rights reserved.
import UIKit

class ViewController: UIViewController {
    
    //IB INITIALIZATIONS
    @IBOutlet weak var webViewTest: UIWebView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Sets URL string
        let url = NSURL (string: "http://128.46.121.195:8081/");
        
        //IP ADDRESSES USED
        //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081 //10.160.165.62:8081
        
        //Makes http Request
        let request = NSURLRequest(url: url! as URL);
        
        //Loads http request into webView on application
        webViewTest.loadRequest(request as URLRequest);
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //SCEEN SHOT FUNCTIONALITY
    @IBAction func takeScreenshot(_ sender: Any)
    {
        captureScreenshot()
    }
    
    func captureScreenshot()
    {
        let layer = UIApplication.shared.keyWindow!.layer
        let scale = UIScreen.main.scale
      
        // Creates UIImage of same size as view
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);
        layer.render(in: UIGraphicsGetCurrentContext()!)
        
        //Save screen shot to photos
        let screenshot = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(screenshot!, nil, nil, nil)
    }
    
    //DOES NOT WORK YET
    @IBAction func colorFilterButton(_ sender: Any)
    {
        print("Color Filters")
        //Calls the app to open settings as a root through the Plist
        UIApplication.shared.open(URL(string:"App-prefs:root=General&path=ACCESSIBILITY")!)
    }
    
    


}

