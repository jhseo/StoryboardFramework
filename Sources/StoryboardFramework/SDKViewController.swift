//
//  SDKViewController.swift
//  StoryboardFramework
//
//  Created by jhseo on 2020/02/10.
//  Copyright © 2020 jhseo. All rights reserved.
//

import UIKit

public final class SDKViewController: UIViewController {

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    override public func loadView() {
        guard self.nibName == nil else { return super.loadView() }

        let storyboard = UIStoryboard(name: "SDKView", bundle: Bundle(for: SDKViewController.self))
        guard let storyboardInstance = storyboard.instantiateViewController(withIdentifier: "SDKViewController") as? SDKViewController else { fatalError() }

        let storyboardView = storyboardInstance.view
        storyboardInstance.view.removeFromSuperview()
        storyboardInstance.view = nil

        self.navigationItem.title = storyboardInstance.navigationItem.title
        self.view = storyboardView
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

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
