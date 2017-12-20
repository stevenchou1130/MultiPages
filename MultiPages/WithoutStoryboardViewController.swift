//
//  WithoutStoryboardViewController.swift
//  MultiPages
//
//  Created by leo.chou on 2017/12/14.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import UIKit

class WithoutStoryboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    func setUp() {
        // 取得螢幕的尺寸
        let fullSize = UIScreen.main.bounds.size

        // 設置底色
        self.view.backgroundColor = UIColor.brown

        // 頁面標題
        let myLabel = UILabel(frame: CGRect(x: 0,
                                            y: 0,
                                            width: fullSize.width,
                                            height: 40))

        myLabel.center = CGPoint(x: fullSize.width * 0.5,
                                 y: fullSize.height * 0.08)

        myLabel.textAlignment = .center
        myLabel.text = "Without Storyboard View"

        self.view.addSubview(myLabel)

        // 建立前往 Main 頁面的 UIButton
        let myButton = UIButton(frame: CGRect(x: 0,
                                              y: 0,
                                              width: 200,
                                              height: 30))

        myButton.setTitle("Back to Main page", for: .normal)
        myButton.backgroundColor = UIColor.lightGray
        myButton.addTarget(nil, action: #selector(goBack), for: .touchUpInside)
        myButton.center = CGPoint(x: fullSize.width * 0.5,
                                  y: fullSize.height * 0.2)

        self.view.addSubview(myButton)
    }

    @objc func goBack() {
        self.dismiss(animated: true, completion:nil)
    }
}
