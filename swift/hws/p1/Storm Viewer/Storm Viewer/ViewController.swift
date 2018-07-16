//
//  ViewController.swift
//  Storm Viewer
//
//  Created by Alan Pham on 6/15/18.
//  Copyright © 2018 Alan Pham. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  var pictures = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Storm Viewer"
    
    let fileManager = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fileManager.contentsOfDirectory(atPath: path)
    
    navigationController?.navigationBar.prefersLargeTitles = true
    
    for item in items {
      if item.hasPrefix("nssl") {
        pictures.append(item)
      }
    }
    
    print(pictures)
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // 1: try loading the "Detail" View controller and type casting it to be DetailViewController
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
      // 2: success! Set its selectedImage property
      vc.selectedImage = pictures[indexPath.row]
      // 3: now push it onto the navigation controller
      navigationController?.pushViewController(vc, animated: true)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

