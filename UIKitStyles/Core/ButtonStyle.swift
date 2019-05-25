//
//  ButtonStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/24/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import UIKit

class ButtonStyle: ViewStyle {

    var titleLabel = LabelStyle()

    var title: [UIControl.State: String?]
    var attributedTitle: [UIControl.State: NSAttributedString?]
    var titleColor: [UIControl.State: UIColor]
    var titleShadowColor: [UIControl.State: UIColor]
    var reversesTitleShadowWhenHighlighted: Bool?
    var adjustsImageWhenHighlighted: Bool?
    var adjustsImageWhenDisabled: Bool?
    var showsTouchWhenHighlighted: Bool?
    var backgroundImage: [UIControl.State: UIImage]
    var image: [UIControl.State: UIImage]
    var contentEdgeInsets: UIEdgeInsets?
    var titleEdgeInsets: UIEdgeInsets?
    var imageEdgeInsets: UIEdgeInsets?
    
    init(
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
}

extension UIButton {
    func apply(style: ButtonStyle) {

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
