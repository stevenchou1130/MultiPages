//
//  ViewController.swift
//  MultiPages
//
//  Created by leo.chou on 2017/12/14.
//  Copyright © 2017年 leo.chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueBtn: UIButton!
    @IBOutlet weak var secondPageBtn: UIButton!
    @IBOutlet weak var withoutStoryboardViewBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setUp()
    }

    func setUp() {
        setUpBtn()
    }

    func setUpBtn() {

        segueBtn.addTarget(self,
                           action: #selector(goSeguePage),
                           for: .touchUpInside)

        secondPageBtn.addTarget(self,
                                action: #selector(clickButton(_:)),
                                for: .touchUpInside)

        withoutStoryboardViewBtn.addTarget(self,
                                           action: #selector(clickButton(_:)),
                                           for: .touchUpInside)
    }

    // MARK: - Button Action
    @objc func clickButton(_ sender: UIButton) {

        switch sender {
        case secondPageBtn:
            print("Click secondPageBtn")
            self.goSecondPage()
            break

        case withoutStoryboardViewBtn:
            print("Click withoutStoryboardViewBtn")
            self.goWithoutStoryboardView()
            break
        default:
            print("Nothing was clicked")
            break
        }
    }

    // MARK: - Prepare Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let receiveVC = segue.destination as? SeguePageViewController else { return }
        receiveVC.text = "Test"
    }

    // MARK: - Segue
    @objc func goSeguePage() {
        print("Click segueBtn")
        performSegue(withIdentifier: "goSeguePage", sender: self)
    }

    // MARK: - Unwind Segue
    // Unwind 教學: 
    // https://goo.gl/yoDP7d
    // https://www.youtube.com/watch?v=AjGge-Qzh1I
    // https://www.youtube.com/watch?v=XjBqKaGiZws&t=594sg
    @IBAction func unwindToMainPage(segue:UIStoryboardSegue) {}

    // MARK: - Init controller & Present
    func goSecondPage() {
        let secondViewStorybard = UIStoryboard(name: "Second", bundle: nil)
        let secondViewController = secondViewStorybard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController

        self.present(secondViewController!, animated: true, completion: nil)
    }

    // MARK: - Present (the target VC without storyboard)
    func goWithoutStoryboardView() {
        self.present(WithoutStoryboardViewController(),
                     animated: true, completion: nil)
    }
}

