//
//  ViewController.swift
//  StoryboardFrameworkExample
//
//  Created by jhseo on 2020/02/10.
//  Copyright © 2020 jhseo. All rights reserved.
//

import UIKit
import StoryboardFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushBtnDidTap(_ sender: Any) {
        let vc = SDKViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func presentBtnDidTap(_ sender: Any) {
        let vc = SDKViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationBar.prefersLargeTitles = true
        self.present(nav, animated: true, completion: nil)
    }
}

