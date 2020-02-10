//
//  SDKViewController.swift
//  StoryboardFramework
//
//  Created by jhseo on 2020/02/10.
//  Copyright © 2020 jhseo. All rights reserved.
//

import UIKit

public final class SDKViewController: UIViewController {

    @IBAction func okBtnDidTap(_ sender: Any) {
        var isModal: Bool {
            if (self.presentingViewController != nil) {
                return true
            }
            if self.navigationController?.presentingViewController?.presentingViewController == self.navigationController {
                return true
            }
            if self.tabBarController?.presentingViewController?.isKind(of: UITabBarController.self) ?? false {
                return true
            }
            return false
        }
        if isModal {
            dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
