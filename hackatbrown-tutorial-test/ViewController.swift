//
//  ViewController.swift
//  hackatbrown-tutorial-test
//
//  Created by Valentin Perez on 1/31/16.
//  Copyright © 2016 Valpe Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var MajorLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    print("Hellow 🔑")
    MajorLabel.text = "Major 🔑 app"

    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

