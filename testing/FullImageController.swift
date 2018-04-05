//
//  FullImageController.swift
//  testing
//
//  Created by Nicholas Rosato on 4/5/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.
//

import UIKit

class FullImageController: UIViewController, UIScrollViewDelegate
{
  //VAR INITIALIZATIONS
  var image : UIImage!
  
  //IB INITIALIZATIONS
  @IBOutlet weak var returnButton: UIButton!
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var scroll: UIScrollView!
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
      
      //DOES NOT NEEED OPTIONAL UNWRAPPING, WILL ALWAYS HAVE AN IMAGE
      imageView.image = image
      scroll.delegate = self
      
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
  
  @IBAction func returnPressed(_ sender: Any)
  {
    self.dismiss(animated: true, completion: nil)
  }
  
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  {
    return imageView
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
