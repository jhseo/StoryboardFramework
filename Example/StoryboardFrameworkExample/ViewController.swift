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
    @IBOutlet weak var buttonStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = SDKButton(frame: CGRect.zero, title: "from code")
        button.delegate = self
        buttonStackView.addArrangedSubview(button)
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

extension ViewController: SDKButtonDelegate {
    func btnDidTap() {
        let alert = UIAlertController(title: nil, message: "button action", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
}
