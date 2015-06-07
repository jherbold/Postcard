//
//  ViewController.swift
//  Postcard
//
//  Created by John Herbold on 6/1/15.
//  Copyright (c) 2015 John Herbold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    @IBOutlet var messageLabelBlah: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // hello, world, comment.

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        messageLabel.backgroundColor = sender.backgroundColor
        messageLabel.textColor = UIColor.whiteColor()
        messageLabel.hidden = false

        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sendMailButton.backgroundColor = UIColor.grayColor()
        sendMailButton.setTitle("Message Sent", forState: UIControlState.Normal)
        
    }

}

