//
//  LabelStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/24/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

class LabelStyle: ViewStyle {
    var text: String? = nil
    var attributedText: NSAttributedString? = nil
    var font: UIFont? = nil
    var textColor: UIColor? = nil
    var textAlignment: NSTextAlignment? = nil
    var lineBreakMode: NSLineBreakMode? = nil
    var isEnabled: Bool? = nil
    var adjustsFontSizeToFitWidth: Bool? = nil
    var allowsDefaultTighteningForTruncation: Bool? = nil
    var baselineAdjustment: UIBaselineAdjustment? = nil
    var minimumScaleFactor: CGFloat? = nil
    var numberOfLines: Int? = nil
    var highlightedTextColor: UIColor? = nil
    var isHighlighted: Bool? = nil
    var shadowColor: UIColor? = nil
    var shadowOffset: CGSize? = nil
    
    init(text: String? = nil,
        attributedText: NSAttributedString? = nil,
        font: UIFont? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        lineBreakMode: NSLineBreakMode? = nil,
        isEnabled: Bool? = nil,
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
        self.isEnabled = isEnabled
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
}

extension UILabel {
    
    func apply(style: LabelStyle) {
        super.apply(style: style)
        if let attributedText = style.attributedText { self.attributedText = attributedText}
        if let font = style.font { self.font = font}
        if let textColor = style.textColor { self.textColor = textColor}
        if let textAlignment = style.textAlignment { self.textAlignment = textAlignment}
        if let lineBreakMode = style.lineBreakMode { self.lineBreakMode = lineBreakMode}
        if let isEnabled = style.isEnabled { self.isEnabled = isEnabled}
        if let adjustsFontSizeToFitWidth = style.adjustsFontSizeToFitWidth { self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth}
        if let allowsDefaultTighteningForTruncation = style.allowsDefaultTighteningForTruncation { self.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation}
        if let baselineAdjustment = style.baselineAdjustment { self.baselineAdjustment = baselineAdjustment}
        if let minimumScaleFactor = style.minimumScaleFactor { self.minimumScaleFactor = minimumScaleFactor}
        if let numberOfLines = style.numberOfLines { self.numberOfLines = numberOfLines}
        if let highlightedTextColor = style.highlightedTextColor { self.highlightedTextColor = highlightedTextColor}
        if let isHighlighted = style.isHighlighted { self.isHighlighted = isHighlighted}
        if let shadowColor = style.shadowColor { self.shadowColor = shadowColor}
        if let shadowOffset = style.shadowOffset { self.shadowOffset = shadowOffset}
    }
}


