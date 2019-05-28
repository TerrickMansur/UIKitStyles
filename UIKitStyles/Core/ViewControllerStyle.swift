//
//  ViewControllerStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/25/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

public class ViewControllerStyle {
    public var preferredStatusBarStyle: UIStatusBarStyle
    public var prefersStatusBarHidden: Bool
    public var viewStyle = ViewStyle()

    public init(preferredStatusBarStyle: UIStatusBarStyle = .default,
                prefersStatusBarHidden: Bool = false,
                viewStyle: ViewStyle = ViewStyle()) {
        self.preferredStatusBarStyle = preferredStatusBarStyle
        self.prefersStatusBarHidden = prefersStatusBarHidden
        self.viewStyle = viewStyle
    }
}

extension UIViewController {
    public func apply(style: ViewControllerStyle) {
        view.apply(style: style.viewStyle)
    }
}
