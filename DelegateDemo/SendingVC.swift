//
//  SendingVC.swift
//  DelegateDemo
//
//  Created by Jennifer Lin on 2019/6/18.
//  Copyright © 2019 Jennifer Lin. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("In sending VC")

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    @IBAction func btnSender(_ sender: Any) {
        
        print("button is pressed")
        if delegate != nil {
            if dataEntryTextField != nil {
                delegate?.userDidEnterData(data: dataEntryTextField.text!)
            dismiss(animated: true, completion: nil)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
