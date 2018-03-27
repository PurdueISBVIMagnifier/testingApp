//
//  SplitController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.


import UIKit
import WebKit

class SplitController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate
{
  //VAR INITIALIZATIONS
  var sSImage : UIImage?
  
  //IB INITIALIZATIONS
  @IBOutlet weak var splitWebView: WKWebView!
  @IBOutlet weak var splitImageView: UIImageView!
  @IBOutlet var leftGest: UITapGestureRecognizer!
  @IBOutlet var rightGest: UITapGestureRecognizer!
  @IBOutlet var mainGest: UITapGestureRecognizer!
  @IBOutlet weak var accessPhotosButton: UIButton!
  @IBOutlet var pinchGest: UIPinchGestureRecognizer!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
   
    pageImageLoad()
   
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }

  func pageImageLoad()
  {
    if sSImage != nil
    {
      //print("Image is there")
      splitImageView.image = sSImage
    }
    //Sets URL string
    //IP ADDRESSES USED
    //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081 //10.160.165.62:8081  //128.211.222.119:8081
    let url = NSURL (string: "http://128.46.121.195:8081")
    
    //Makes http Request
    let request = NSURLRequest(url: url! as URL)
    
    //Loads http request into webView on application
    splitWebView.load(request as URLRequest)
  }
  
  //DISMISS CODES FOR GESTURES
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
  
  @IBAction func accessPhotosPressed(_ sender: Any)
  {
    let image = UIImagePickerController()
    image.delegate = self
    image.sourceType = UIImagePickerControllerSourceType.photoLibrary
    image.allowsEditing = false
    self.present(image, animated: true, completion: nil)
  }
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
  {
    //UNWRAPS THE OPTION UIIMAGE VALUE
    if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
    {
      splitImageView.image = image
    }
    //else
    //{
      //Display Error Message
    //}
    self.dismiss(animated: true, completion: nil)
  }
  
  //DIGITAL ZOOM ON IMAGE
  @IBAction func pinchHappened(_ sender: UIPinchGestureRecognizer)
  {
      //USES CGAZOOM TO ZOOM BASED ON PINCH
      splitImageView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
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
