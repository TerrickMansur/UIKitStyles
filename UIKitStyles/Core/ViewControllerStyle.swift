//
//  ViewControllerStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/25/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

public class ViewControllerStyle {
   var viewStyle = ViewStyle()
}

extension UIViewController {
    public func apply(style: ViewControllerStyle) {
        view.apply(style: style.viewStyle)
    }
}
