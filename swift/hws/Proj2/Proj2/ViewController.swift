//
//  ViewController.swift
//  Proj2
//
//  Created by Alan Pham on 12/2/18.
//  Copyright © 2018 Alan Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var button1: UIButton!
  @IBOutlet var button2: UIButton!
  @IBOutlet var button3: UIButton!
  
  var countries = [String]()
  var correctAnswer = 0
  var score = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    countries.append("estonia")
//    countries.append("france")
//    countries.append("germany")
//    countries.append("ireland")
//    countries.append("italy")
//    countries.append("monaco")
//    countries.append("nigeria")
//    countries.append("poland")
//    countries.append("russia")
//    countries.append("spain")
//    countries.append("uk")
//    countries.append("us")
    
    countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    
    button1.layer.borderWidth = 1
    button2.layer.borderWidth = 1
    button3.layer.borderWidth = 1
    
    button1.layer.borderColor = UIColor(red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0).cgColor //UIColor.lightGray.cgColor
    button2.layer.borderColor = UIColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0).cgColor //UIColor.lightGray.cgColor
    button3.layer.borderColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0).cgColor //UIColor.lightGray.cgColor
    
    askQuestion()
  }

  func askQuestion(action: UIAlertAction! = nil) {
    
    countries.shuffle()
    
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
    
    correctAnswer = Int.random(in: 0...2)
    title = countries[correctAnswer].uppercased()
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    var title: String
    
    if sender.tag == correctAnswer {
      title = "Correct"
      score += 1
    }
    else {
      title = "Wrong"
      score -= 1
    }
    
    let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
    
    ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
    present(ac, animated: true)
  }
  
  
}

