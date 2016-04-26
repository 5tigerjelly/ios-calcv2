//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by iGuest on 4/26/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    
    var labeltext : [String]!
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        for i in 0...labeltext.count-1{
            label.text = label.text! + labeltext[i]
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController: ViewController = segue.destinationViewController as! ViewController
        DestViewController.history = labeltext;
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
