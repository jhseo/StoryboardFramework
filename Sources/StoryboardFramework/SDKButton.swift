//
//  SDKButton.swift
//  StoryboardFramework
//
//  Created by jhseo on 2020/02/11.
//

import UIKit

@objc public protocol SDKButtonDelegate: class {
    func btnDidTap()
}

@IBDesignable
public final class SDKButton: UIView {
    @IBOutlet public weak var delegate: SDKButtonDelegate?
    @IBOutlet weak var button: UIButton!

    @IBInspectable
    var title: String = "" {
        didSet {
            button.setTitle(title, for: .normal)
        }
    }

    public init(frame: CGRect, title: String) {
        super.init(frame: frame)
        self.commonInitialization()
        button.setTitle(title, for: .normal)
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInitialization()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.commonInitialization()
    }

    func commonInitialization() {
        let bundle = Bundle(for: SDKButton.self)
        let contentView = bundle.loadNibNamed("SDKButton", owner: self, options: nil)!.first as! UIView
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.frame = self.bounds
        addSubview(contentView)
    }

    @IBAction func btnDidTap(_ sender: Any) {
        delegate?.btnDidTap()
    }
}
