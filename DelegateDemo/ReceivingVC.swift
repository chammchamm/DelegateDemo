//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Jennifer Lin on 2019/6/18.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate{
    
    @IBOutlet weak var lbReceiving: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func userDidEnterData(data: String) {
        lbReceiving.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToSendingVC" {
            
            print("Prepare to move to sending VC")
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
            
        }
    }
}

