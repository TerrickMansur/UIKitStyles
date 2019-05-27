//
//  ViewStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/22/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

public class ViewStyle {

    public var backgroundColor: UIColor? = nil
    public var isHidden: Bool? = nil
    public var alpha: CGFloat? = nil
    public var isOpaque: Bool? = nil
    public var tintColor: UIColor? = nil
    public var tintAdjustmentMode: UIView.TintAdjustmentMode? = nil
    public var clipsToBounds: Bool? = nil
    public var clearsContextBeforeDrawing: Bool? = nil
    public var mask: UIView? = nil
    public var layer: LayerStyle = LayerStyle()
    
    public init(
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
    
    public static func +=(lhs: inout ViewStyle, rhs: ViewStyle) {
        lhs.backgroundColor = rhs.backgroundColor
        lhs.isHidden = rhs.isHidden
        lhs.alpha = rhs.alpha
        lhs.isOpaque = rhs.isOpaque
        lhs.tintColor = rhs.tintColor
        lhs.tintAdjustmentMode = rhs.tintAdjustmentMode
        lhs.clipsToBounds = rhs.clipsToBounds
        lhs.clearsContextBeforeDrawing = rhs.clearsContextBeforeDrawing
        lhs.mask = rhs.mask
        lhs.layer = rhs.layer
    }
}


extension UIView {
    
    public func apply(style: ViewStyle) {
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
