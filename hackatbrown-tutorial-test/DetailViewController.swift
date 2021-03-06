//
//  DetailViewController.swift
//  hackatbrown-tutorial-test
//
//  Created by Valentin Perez on 1/31/16.
//  Copyright © 2016 Valpe Technologies. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet var keyTableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()

      print("new detail")
      self.keyTableView.delegate = self
      self.keyTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {


    let cell : KeyTableViewCell = tableView.dequeueReusableCellWithIdentifier("keyCell") as! KeyTableViewCell

    cell.keyLabel.text = "🔑"

    return cell

  }

  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }

  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print("selected key \(indexPath.row)")

    let alertView = UIAlertController(title: "Selected key \(indexPath.row)", message: "They don't want you to select it.", preferredStyle: .Alert)


    alertView.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
    presentViewController(alertView, animated: true, completion: nil)
  }




  @IBAction func tappedClose(sender: AnyObject) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
