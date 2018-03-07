//
//  ViewController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/1/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webViewTest: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL (string: "http://10.160.165.62:8081/"); //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081
        let request = NSURLRequest(url: url! as URL);
        webViewTest.loadRequest(request as URLRequest);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func takeScreenshot(_ sender: Any) {
        
        captureScreenshot()
    }
    func captureScreenshot(){
        let layer = UIApplication.shared.keyWindow!.layer
        let scale = UIScreen.main.scale
        // Creates UIImage of same size as view
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let screenshot = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        // THIS IS TO SAVE SCREENSHOT TO PHOTOS
        UIImageWriteToSavedPhotosAlbum(screenshot!, nil, nil, nil)
    }
    
    


}

