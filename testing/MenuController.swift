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
  @IBOutlet weak var colorFilterButton: UIButton!
  @IBOutlet weak var mobileMagnifyButton: UIButton!
  @IBOutlet weak var selectDeviceButton: UIButton!
  @IBOutlet weak var accessPhotosButton: UIButton!
  @IBOutlet weak var helpButton: UIButton!
  @IBOutlet weak var returnButton: UIButton!
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
  @IBAction func mobileMagnifyPressed(_ sender: Any)
  {
    //OPENS UP SETTINGS IN THE APPLICATION AUTOMATICALLY
    UIApplication.shared.open(URL(string:"App-prefs:root=General&path=ACCESSIBILITY")!)
  }
  

  @IBAction func colorFiltersActivated(_ sender: Any)
  {
    //OPENS UP SETTINGS IN THE APPLICATION AUTOMATICALLY
    UIApplication.shared.open(URL(string:"App-prefs:root=General&path=ACCESSIBILITY")!)
  }
  
  @IBAction func returnToFS(_ sender: Any)
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
