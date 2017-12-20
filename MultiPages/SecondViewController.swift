//
//  SecondViewController.swift
//  MultiPages
//
//  Created by leo.chou on 2017/12/14.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backToMainPage(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
