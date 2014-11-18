//
//  ViewController.swift
//  chapter6-4
//
//  Created by SMB開発部 on 2014/11/18.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        var myDefault = NSUserDefaults.standardUserDefaults()
        var myStr = myDefault.stringForKey("myString")
        if let tmpstr = myStr{
            myText.text = tmpstr
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func tapReturnKey(sender: UITextField) {
        var myDefault = NSUserDefaults.standardUserDefaults()
        myDefault.setObject(sender.text, forKey: "myString")
        myDefault.synchronize()
    }
}

