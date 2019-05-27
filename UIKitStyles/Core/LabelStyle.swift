//
//  LabelStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/24/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

public class LabelStyle: ViewStyle {

    public var attributedText: NSAttributedString? = nil
    public var font: UIFont? = nil
    public var textColor: UIColor? = nil
    public var textAlignment: NSTextAlignment? = nil
    public var lineBreakMode: NSLineBreakMode? = nil
    public var adjustsFontSizeToFitWidth: Bool? = nil
    public var allowsDefaultTighteningForTruncation: Bool? = nil
    public var baselineAdjustment: UIBaselineAdjustment? = nil
    public var minimumScaleFactor: CGFloat? = nil
    public var numberOfLines: Int? = nil
    public var highlightedTextColor: UIColor? = nil
    public var isHighlighted: Bool? = nil
    public var shadowColor: UIColor? = nil
    public var shadowOffset: CGSize? = nil
    
    public init(text: String? = nil,
        attributedText: NSAttributedString? = nil,
        font: UIFont? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        lineBreakMode: NSLineBreakMode? = nil,
        adjustsFontSizeToFitWidth: Bool? = nil,
        allowsDefaultTighteningForTruncation: Bool? = nil,
        baselineAdjustment: UIBaselineAdjustment? = nil,
        minimumScaleFactor: CGFloat? = nil,
        numberOfLines: Int? = nil,
        highlightedTextColor: UIColor? = nil,
        isHighlighted: Bool? = nil,
        shadowColor: UIColor? = nil,
        shadowOffset: CGSize? = nil) {
        super.init()
        self.attributedText = attributedText
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.lineBreakMode = lineBreakMode
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        self.baselineAdjustment = baselineAdjustment
        self.minimumScaleFactor = minimumScaleFactor
        self.numberOfLines = numberOfLines
        self.highlightedTextColor = highlightedTextColor
        self.isHighlighted = isHighlighted
        self.shadowColor = shadowColor
        self.shadowOffset = shadowOffset
    }
    
    public static func +=(lhs: inout LabelStyle, rhs: ViewStyle) {
        var viewStyle = lhs as ViewStyle
        viewStyle += rhs
    }
}

extension UILabel {
    
    public func apply(style: LabelStyle) {
        super.apply(style: style)
        style.font.whenNotNil { self.font = $0}
        style.textColor.whenNotNil { self.textColor = $0}
        style.textAlignment.whenNotNil { self.textAlignment = $0}
        style.lineBreakMode.whenNotNil { self.lineBreakMode = $0}
        style.adjustsFontSizeToFitWidth.whenNotNil { self.adjustsFontSizeToFitWidth = $0}
        style.allowsDefaultTighteningForTruncation.whenNotNil { self.allowsDefaultTighteningForTruncation = $0}
        style.baselineAdjustment.whenNotNil { self.baselineAdjustment = $0}
        style.minimumScaleFactor.whenNotNil { self.minimumScaleFactor = $0}
        style.numberOfLines.whenNotNil { self.numberOfLines = $0}
        style.highlightedTextColor.whenNotNil { self.highlightedTextColor = $0}
        style.isHighlighted.whenNotNil { self.isHighlighted = $0}
        style.shadowColor.whenNotNil { self.shadowColor = $0}
        style.shadowOffset.whenNotNil { self.shadowOffset = $0}
    }
}


