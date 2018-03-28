//
//  HelpView.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit
import WebKit

class HelpView: UIViewController
{
  //IB INITIALIZATIONS
  @IBOutlet weak var helpWebView: WKWebView!
  @IBOutlet weak var returnButton: UIButton!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()

    //IP STREAM TO SPLIT VIEW
    let path = Bundle.main.path(forResource: "testPDF", ofType: "pdf")
    let url = URL(fileURLWithPath: path!)
    let request = URLRequest(url: url)
    helpWebView.load(request)
  }
  
  override func didReceiveMemoryWarning()
  {
        super.didReceiveMemoryWarning()
  }
  

  //RETURN BUTTON PRESSED
  @IBAction func returnButtonPressed(_ sender: Any)
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
