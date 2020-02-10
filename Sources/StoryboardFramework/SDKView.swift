//
//  SDKView.swift
//  StoryboardFramework
//
//  Created by jhseo on 2020/02/10.
//  Copyright © 2020 jhseo. All rights reserved.
//

import UIKit

public final class SDKView {
    public static let shared = SDKView()
    public lazy var storyboard = UIStoryboard(name: "SDKView", bundle: Bundle(for: SDKView.self))

    public func make() -> SDKViewController {
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SDKViewController") as? SDKViewController else { fatalError() }
        return vc
    }
}
