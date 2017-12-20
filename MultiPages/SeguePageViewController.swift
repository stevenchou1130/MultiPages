//
//  SeguePageViewController.swift
//  MultiPages
//
//  Created by leo.chou on 2017/12/14.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import UIKit

class SeguePageViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!

    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let receivedText = text {
            titleLabel.text = receivedText
        }
    }

    @IBAction func toMainPageViaUnwind(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegue", sender: self)
    }
    
    @IBAction func backToMainPage(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
