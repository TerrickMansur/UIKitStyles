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

public class LayerStyle {
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
    public var allowsEdgeAntialiasing: Bool?
    public var allowsGroupOpacity: Bool?

    public init(contentsGravity: CALayerContentsGravity? = nil,
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
         self.allowsEdgeAntialiasing = allowsEdgeAntialiasing
         self.allowsGroupOpacity = allowsGroupOpacity
    }
}

extension CALayer {
    
    func apply(style: LayerStyle) {

        style.contentsGravity.whenNotNil { self.contentsGravity = $0 }
        style.opacity.whenNotNil { self.opacity = $0 }
        style.isHidden.whenNotNil { self.isHidden = $0 }
        style.masksToBounds.whenNotNil { self.masksToBounds = $0 }
        style.mask.whenNotNil { self.mask = $0 }
        style.isDoubleSided.whenNotNil { self.isDoubleSided = $0 }
        style.cornerRadius.whenNotNil { self.cornerRadius = $0 }
//        style.maskedCorners.whenNotNil { self.maskedCorners = $0 }
        style.borderWidth.whenNotNil { self.borderWidth = $0 }
        style.borderColor.whenNotNil { self.borderColor = $0 }
        style.backgroundColor.whenNotNil { self.backgroundColor = $0 }
        style.shadowOpacity.whenNotNil { self.shadowOpacity = $0 }
        style.shadowRadius.whenNotNil { self.shadowRadius = $0 }
        style.shadowOffset.whenNotNil { self.shadowOffset = $0 }
        style.shadowColor.whenNotNil { self.shadowColor = $0 }
        style.shadowPath.whenNotNil { self.shadowPath = $0 }
        style.allowsGroupOpacity.whenNotNil { self.allowsGroupOpacity = $0 }
        style.allowsEdgeAntialiasing.whenNotNil { self.allowsEdgeAntialiasing = $0 }
        style.allowsGroupOpacity.whenNotNil { self.allowsGroupOpacity = $0 }
   }
}
