//
//  DetailViewController.swift
//  Storm Viewer
//
//  Created by Alan Pham on 6/24/18.
//  Copyright © 2018 Alan Pham. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet var imageView: UIImageView!
  
  var selectedImage: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()

    title = selectedImage
    
    navigationItem.largeTitleDisplayMode = .never
    
    if let imageToLoad = selectedImage {
      imageView.image = UIImage(named: imageToLoad)
    }
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
  }
  
  override func prefersHomeIndicatorAutoHidden() -> Bool {
    return navigationController?.hidesBarsOnTap ?? false
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
}
