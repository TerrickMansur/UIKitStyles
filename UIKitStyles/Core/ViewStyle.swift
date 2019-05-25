//
//  ViewStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/22/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

class ViewStyle {

    var backgroundColor: UIColor? = nil
    var isHidden: Bool? = nil
    var alpha: CGFloat? = nil
    var isOpaque: Bool? = nil
    var tintColor: UIColor? = nil
    var tintAdjustmentMode: UIView.TintAdjustmentMode? = nil
    var clipsToBounds: Bool? = nil
    var clearsContextBeforeDrawing: Bool? = nil
    var mask: UIView? = nil
    var layer: LayerStyle = LayerStyle()
    
    init(
        backgroundColor: UIColor? = nil,
        isHidden: Bool? = nil,
        alpha: CGFloat? = nil,
        isOpaque: Bool? = nil,
        tintColor: UIColor? = nil,
        tintAdjustmentMode: UIView.TintAdjustmentMode? = nil,
        clipsToBounds: Bool? = nil,
        clearsContextBeforeDrawing: Bool? = nil,
        mask: UIView? = nil) {
        self.backgroundColor = backgroundColor
        self.isHidden = isHidden
        self.alpha  = alpha
        self.isOpaque = isOpaque
        self.tintColor = tintColor
        self.tintAdjustmentMode = tintAdjustmentMode
        self.clipsToBounds = clipsToBounds
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        self.mask = mask
    }
}


extension UIView {
    
    func apply(style: ViewStyle) {
        self.layer.apply(style: style.layer)
        style.backgroundColor.whenNotNil { self.backgroundColor = $0 }
        style.isHidden.whenNotNil { self.isHidden = $0 }
        style.alpha.whenNotNil { self.alpha = $0 }
        style.isOpaque.whenNotNil { self.isOpaque = $0 }
        style.tintColor.whenNotNil { self.tintColor = $0 }
        style.tintAdjustmentMode.whenNotNil { self.tintAdjustmentMode = $0 }
        style.clipsToBounds.whenNotNil { self.clipsToBounds = $0 }
        style.clearsContextBeforeDrawing.whenNotNil { self.clearsContextBeforeDrawing = $0 }
        style.mask.whenNotNil { self.mask = $0 }
    }
}
