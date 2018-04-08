//
//  MenuController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit

class MenuController: UIViewController
{
  //IB INITIALIZATIONS
  @IBOutlet weak var selectDeviceButton: UIButton!
  @IBOutlet weak var accessPhotosButton: UIButton!
  @IBOutlet weak var helpButton: UIButton!
  @IBOutlet weak var returnButton: UIButton!
  
  //VAR DECLARATIONS
  var ipText: String? //The string that is passed to the select device controller
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
 
  
  @IBAction func returnToFS(_ sender: Any)
  {
    self.dismiss(animated: true, completion: nil)
  }
  
  @IBAction func selectDevicePressed(_ sender: Any)
  {
  
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "segueToDevice"
    {
      let destinationVC = segue.destination as! SelectDeviceController
      destinationVC.labelText = ipText
    }
    
    if segue.identifier == "menuToSV"
    {
      let destinationVC = segue.destination as! SplitController
      destinationVC.urlText = ipText
    }
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
