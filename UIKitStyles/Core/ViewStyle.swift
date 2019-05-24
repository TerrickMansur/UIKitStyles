//
//  ViewStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/22/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

class ViewStyle: NSObject {

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
        if let backgroundColor = style.backgroundColor { self.backgroundColor = backgroundColor}
        if let isHidden = style.isHidden { self.isHidden = isHidden}
        if let alpha = style.alpha { self.alpha = alpha}
        if let isOpaque = style.isOpaque { self.isOpaque = isOpaque}
        if let tintColor = style.tintColor { self.tintColor = tintColor}
        if let tintAdjustmentMode = style.tintAdjustmentMode { self.tintAdjustmentMode = tintAdjustmentMode}
        if let clipsToBounds = style.clipsToBounds { self.clipsToBounds = clipsToBounds}
        if let clearsContextBeforeDrawing = style.clearsContextBeforeDrawing { self.clearsContextBeforeDrawing = clearsContextBeforeDrawing}
        if let mask = style.mask { self.mask = mask}
    }
}
