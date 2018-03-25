//
//  SelectDeviceController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/25/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit

class SelectDeviceController: UIViewController {
  //IB INITIALIZATIONS
  @IBOutlet var sDGestRec: UITapGestureRecognizer!
  @IBOutlet weak var iPLabel: UILabel!
  
  //VAR INITIALIZATIONS
  var labelText: String? //The text that goes into the label
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
      if labelText != nil
      {
        iPLabel.text = labelText
      }

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
      
    }
    
  @IBAction func tripleTapHappened(_ sender: UITapGestureRecognizer)
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
