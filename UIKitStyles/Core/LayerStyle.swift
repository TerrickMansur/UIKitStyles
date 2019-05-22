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
    public var filters: [Any]?
    public var compositingFilter: Any?
    public var backgroundFilters: [Any]?
    public var minificationFilter: CALayerContentsFilter?
    public var minificationFilterBias: Float?
    public var magnificationFilter: CALayerContentsFilter?
    public var isOpaque: Bool?
    public var edgeAntialiasingMask: CAEdgeAntialiasingMask?
    public var isGeometryFlipped: Bool?
    public var drawsAsynchronously: Bool?
    public var shouldRasterize: Bool?
    public var rasterizationScale: CGFloat?
    public var contentsFormat: CALayerContentsFormat?
    public var frame: CGRect?
    public var bounds: CGRect?
    public var position: CGPoint?
    public var zPosition: CGFloat?
    public var anchorPointZ: CGFloat?
    public var anchorPoint: CGPoint?
    public var contentsScale: CGFloat?
    public var transform: CATransform3D?
    public var sublayerTransform: CATransform3D?
    public var needsDisplayOnBoundsChange: Bool?
    public var name: String?

    
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
         allowsGroupOpacity: Bool? = nil,
         filters: [Any]? = nil,
         compositingFilter: Any? = nil,
         backgroundFilters: [Any]? = nil,
         minificationFilter: CALayerContentsFilter? = nil,
         minificationFilterBias: Float? = nil,
         magnificationFilter: CALayerContentsFilter? = nil,
         isOpaque: Bool? = nil,
         edgeAntialiasingMask: CAEdgeAntialiasingMask? = nil,
         isGeometryFlipped: Bool? = nil,
         drawsAsynchronously: Bool? = nil,
         shouldRasterize: Bool? = nil,
         rasterizationScale: CGFloat? = nil,
         contentsFormat: CALayerContentsFormat? = nil,
         frame: CGRect? = nil,
         bounds: CGRect? = nil,
         position: CGPoint? = nil,
         zPosition: CGFloat? = nil,
         anchorPointZ: CGFloat? = nil,
         anchorPoint: CGPoint? = nil,
         contentsScale: CGFloat? = nil,
         transform: CATransform3D? = nil,
         sublayerTransform: CATransform3D? = nil,
         needsDisplayOnBoundsChange: Bool? = nil,
         name: String? = nil) {
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
         self.filters = filters
         self.compositingFilter = compositingFilter
         self.backgroundFilters = backgroundFilters
         self.minificationFilter = minificationFilter
         self.minificationFilterBias = minificationFilterBias
         self.magnificationFilter = magnificationFilter
         self.isOpaque = isOpaque
         self.edgeAntialiasingMask = edgeAntialiasingMask
         self.isGeometryFlipped = isGeometryFlipped
         self.drawsAsynchronously = drawsAsynchronously
         self.shouldRasterize = shouldRasterize
         self.rasterizationScale = rasterizationScale
         self.contentsFormat = contentsFormat
         self.frame = frame
         self.bounds = bounds
         self.position = position
         self.zPosition = zPosition
         self.anchorPointZ = anchorPointZ
         self.anchorPoint = anchorPoint
         self.contentsScale = contentsScale
         self.transform = transform
         self.sublayerTransform = sublayerTransform
         self.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange
         self.name = name
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
        if let filters = style.filters { self.filters = filters }
        if let compositingFilter = style.compositingFilter { self.compositingFilter = compositingFilter }
        if let backgroundFilters = style.backgroundFilters { self.backgroundFilters = backgroundFilters }
        if let minificationFilter = style.minificationFilter { self.minificationFilter = minificationFilter }
        if let minificationFilterBias = style.minificationFilterBias { self.minificationFilterBias = minificationFilterBias }
        if let magnificationFilter = style.magnificationFilter { self.magnificationFilter = magnificationFilter }
        if let isOpaque = style.isOpaque { self.isOpaque = isOpaque }
        if let edgeAntialiasingMask = style.edgeAntialiasingMask { self.edgeAntialiasingMask = edgeAntialiasingMask }
        if let isGeometryFlipped = style.isGeometryFlipped { self.isGeometryFlipped = isGeometryFlipped }
        if let drawsAsynchronously = style.drawsAsynchronously { self.drawsAsynchronously = drawsAsynchronously }
        if let shouldRasterize = style.shouldRasterize { self.shouldRasterize = shouldRasterize }
        if let rasterizationScale = style.rasterizationScale { self.rasterizationScale = rasterizationScale }
        if let contentsFormat = style.contentsFormat { self.contentsFormat = contentsFormat }
        if let frame = style.frame { self.frame = frame }
        if let bounds = style.bounds { self.bounds = bounds }
        if let position = style.position { self.position = position }
        if let zPosition = style.zPosition { self.zPosition = zPosition }
        if let anchorPointZ = style.anchorPointZ { self.anchorPointZ = anchorPointZ }
        if let anchorPoint = style.anchorPoint { self.anchorPoint = anchorPoint }
        if let contentsScale = style.contentsScale { self.contentsScale = contentsScale }
        if let transform = style.transform { self.transform = transform }
        if let sublayerTransform = style.sublayerTransform { self.sublayerTransform = sublayerTransform }
        if let needsDisplayOnBoundsChange = style.needsDisplayOnBoundsChange { self.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange }
        if let name = style.name { self.name = name }
   }
}
