//
//  HelpView.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit
import WebKit

class HelpView: UIViewController {
  
  @IBOutlet weak var helpWebView: WKWebView!
  @IBOutlet var hvTapGest: UITapGestureRecognizer!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      let path = Bundle.main.path(forResource: "testPDF", ofType: "pdf")
      let url = URL(fileURLWithPath: path!)
      let request = URLRequest(url: url)
      helpWebView.load(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func hvGestPressed(_ sender: Any) {
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
