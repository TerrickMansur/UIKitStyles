//
//  Layer.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/21/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit
import CoreGraphics
import QuartzCore

public class CALayerStyle {
    public var contentsGravity: CALayerContentsGravity?
    public var opacity: Float?
    public var isHidden: Bool?
    public var masksToBounds: Bool?
    public var mask: CALayer?
    public var isDoubleSided: Bool?
    public var cornerRadius: CGFloat?
    public var maskedCorners: CACornerMask?
    public var borderWidth: CGFloat?
    public var borderColor: CGColor?
    public var backgroundColor: CGColor?
    public var shadowOpacity: Float?
    public var shadowRadius: CGFloat?
    public var shadowOffset: CGSize?
    public var shadowColor: CGColor?
    public var shadowPath: CGPath?
    public var style: [AnyHashable : Any]?
    public var allowsEdgeAntialiasing: Bool?
    public var allowsGroupOpacity: Bool?

    init(contentsGravity: CALayerContentsGravity? = nil,
         opacity: Float? = nil,
         isHidden: Bool? = nil,
         masksToBounds: Bool? = nil,
         mask: CALayer? = nil,
         isDoubleSided: Bool? = nil,
         cornerRadius: CGFloat? = nil,
         maskedCorners: CACornerMask? = nil,
         borderWidth: CGFloat? = nil,
         borderColor: CGColor? = nil,
         backgroundColor: CGColor? = nil,
         shadowOpacity: Float? = nil,
         shadowRadius: CGFloat? = nil,
         shadowOffset: CGSize? = nil,
         shadowColor: CGColor? = nil,
         shadowPath: CGPath? = nil,
         style: [AnyHashable : Any]? = nil,
         allowsEdgeAntialiasing: Bool? = nil,
         allowsGroupOpacity: Bool? = nil) {
         self.contentsGravity = contentsGravity
         self.opacity = opacity
         self.isHidden = isHidden
         self.masksToBounds = masksToBounds
         self.mask = mask
         self.isDoubleSided = isDoubleSided
         self.cornerRadius = cornerRadius
         self.maskedCorners = maskedCorners
         self.borderWidth = borderWidth
         self.borderColor = borderColor
         self.backgroundColor = backgroundColor
         self.shadowOpacity = shadowOpacity
         self.shadowRadius = shadowRadius
         self.shadowOffset = shadowOffset
         self.shadowColor = shadowColor
         self.shadowPath = shadowPath
         self.style = style
         self.allowsEdgeAntialiasing = allowsEdgeAntialiasing
         self.allowsGroupOpacity = allowsGroupOpacity
    }
}

extension CALayer {
    
    func applyStyle(style: CALayerStyle) {
        if let contentsGravity = style.contentsGravity { self.contentsGravity = contentsGravity }
        if let opacity = style.opacity { self.opacity = opacity }
        if let isHidden = style.isHidden { self.isHidden = isHidden }
        if let masksToBounds = style.masksToBounds { self.masksToBounds = masksToBounds }
        if let mask = style.mask { self.mask = mask }
        if let isDoubleSided = style.isDoubleSided { self.isDoubleSided = isDoubleSided }
        if let cornerRadius = style.cornerRadius { self.cornerRadius = cornerRadius }
        if let maskedCorners = style.maskedCorners { self.maskedCorners = maskedCorners }
        if let borderWidth = style.borderWidth { self.borderWidth = borderWidth }
        if let borderColor = style.borderColor { self.borderColor = borderColor }
        if let backgroundColor = style.backgroundColor { self.backgroundColor = backgroundColor }
        if let shadowOpacity = style.shadowOpacity { self.shadowOpacity = shadowOpacity }
        if let shadowRadius = style.shadowRadius { self.shadowRadius = shadowRadius }
        if let shadowOffset = style.shadowOffset { self.shadowOffset = shadowOffset }
        if let shadowColor = style.shadowColor { self.shadowColor = shadowColor }
        if let shadowPath = style.shadowPath { self.shadowPath = shadowPath }
        if let style = style.style { self.style = style }
        if let allowsEdgeAntialiasing = style.allowsEdgeAntialiasing { self.allowsEdgeAntialiasing = allowsEdgeAntialiasing }
        if let allowsGroupOpacity = style.allowsGroupOpacity { self.allowsGroupOpacity = allowsGroupOpacity }
   }
}
