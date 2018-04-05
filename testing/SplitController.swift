//
//  SplitController.swift
//  testing
//
//  Created by Nicholas Rosato on 3/18/18.
//  Copyright © 2018 Nick Rosato. All rights reserved.


import UIKit
import WebKit

class SplitController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIScrollViewDelegate
{
  //VAR INITIALIZATIONS
  var sSImage : UIImage?
  var urlText : String?
  
  //IB INITIALIZATIONS
  @IBOutlet weak var splitWebView: WKWebView!
  @IBOutlet weak var splitImageView: UIImageView!
  @IBOutlet weak var returnButton: UIButton!
  @IBOutlet weak var accessPhotosButton: UIButton!
  @IBOutlet weak var scroll: UIScrollView!
  
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
      scroll.delegate = self
    
      splitImageView.image = sSImage
    }
    //Sets URL string
    //IP ADDRESSES USED
    //192.168.1.4:8081  //128.46.121.195:8081 //128.46.121.195:8081 //10.160.165.62:8081  //128.211.222.119:8081
    let url = NSURL (string: urlText!)
    
    //Makes http Request
    let request = NSURLRequest(url: url! as URL)
    
    //Loads http request into webView on application
    splitWebView.load(request as URLRequest)
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
  
  //DISMISS CODE
  @IBAction func returnBPressed(_ sender: Any)
  {
     self.dismiss(animated: true, completion: nil)
  }
  
  func viewForZooming(in scrollView: UIScrollView) -> UIView?
  {
    return splitImageView
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
