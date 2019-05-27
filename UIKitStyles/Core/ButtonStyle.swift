//
//  ButtonStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/24/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

public class ButtonStyle: ViewStyle {

    public var titleLabel = LabelStyle()

    public var title: [UIControl.State: String?]
    public var attributedTitle: [UIControl.State: NSAttributedString?]
    public var titleColor: [UIControl.State: UIColor]
    public var titleShadowColor: [UIControl.State: UIColor]
    public var reversesTitleShadowWhenHighlighted: Bool?
    public var adjustsImageWhenHighlighted: Bool?
    public var adjustsImageWhenDisabled: Bool?
    public var showsTouchWhenHighlighted: Bool?
    public var backgroundImage: [UIControl.State: UIImage]
    public var image: [UIControl.State: UIImage]
    public var contentEdgeInsets: UIEdgeInsets?
    public var titleEdgeInsets: UIEdgeInsets?
    public var imageEdgeInsets: UIEdgeInsets?
    
    public init(
        title: [UIControl.State: String?] = [:],
        attributedTitle: [UIControl.State: NSAttributedString?] = [:],
        titleColor: [UIControl.State: UIColor] = [:],
        titleShadowColor: [UIControl.State: UIColor] = [:],
        reversesTitleShadowWhenHighlighted: Bool? = nil,
        adjustsImageWhenHighlighted: Bool? = nil,
        adjustsImageWhenDisabled: Bool? = nil,
        showsTouchWhenHighlighted: Bool? = nil,
        backgroundImage: [UIControl.State: UIImage] = [:],
        image: [UIControl.State: UIImage] = [:],
        contentEdgeInsets: UIEdgeInsets? = nil,
        titleEdgeInsets: UIEdgeInsets? = nil,
        imageEdgeInsets: UIEdgeInsets? = nil) {
        self.title = title
        self.attributedTitle = attributedTitle
        self.titleColor = titleColor
        self.titleShadowColor = titleShadowColor
        self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        self.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        self.backgroundImage = backgroundImage
        self.image = image
        self.contentEdgeInsets = contentEdgeInsets
        self.titleEdgeInsets = titleEdgeInsets
        self.imageEdgeInsets = imageEdgeInsets
        super.init()
    }
    
    public static func +=(lhs: inout ButtonStyle, rhs: ViewStyle) {
        var viewStyle = lhs as ViewStyle
        viewStyle += rhs
    }
}

extension UIButton {
    public func apply(style: ButtonStyle) {
        super.apply(style: style)
        
        style.title.forEach { item in setTitle(item.value, for: item.key) }
        style.attributedTitle.forEach { item in setAttributedTitle(item.value, for: item.key) }
        style.titleColor.forEach { item in setTitleColor(item.value, for: item.key) }
        style.titleShadowColor.forEach { item in setTitleShadowColor(item.value, for: item.key) }
        style.reversesTitleShadowWhenHighlighted.whenNotNil { self.reversesTitleShadowWhenHighlighted = $0}
        style.adjustsImageWhenHighlighted.whenNotNil { self.adjustsImageWhenHighlighted = $0}
        style.adjustsImageWhenDisabled.whenNotNil { self.adjustsImageWhenDisabled = $0}
        style.showsTouchWhenHighlighted.whenNotNil { self.showsTouchWhenHighlighted = $0}
        style.backgroundImage.forEach { item in setBackgroundImage(item.value, for: item.key) }
        style.image.forEach { item in setImage(item.value, for: item.key) }
        style.contentEdgeInsets.whenNotNil { self.contentEdgeInsets = $0}
        style.titleEdgeInsets.whenNotNil { self.titleEdgeInsets = $0}
        style.imageEdgeInsets.whenNotNil { self.imageEdgeInsets = $0}
    }
}
