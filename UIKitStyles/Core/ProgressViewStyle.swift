//
//  ProgressViewStyle.swift
//  UIKitStyles
//
//  Created by Terrick Mansur on 5/28/19.
//  Copyright © 2019 Terrick Mansur. All rights reserved.
//

import Foundation

public class ProgressViewStyle: ViewStyle {

    public var progressViewStyle: UIProgressView.Style
    public var progressTintColor: UIColor?
    public var progressImage: UIImage?
    public var trackTintColor: UIColor?
    public var trackImage: UIImage?

    public init(progressViewStyle: UIProgressView.Style = .default,
                progressTintColor: UIColor? = nil,
                progressImage: UIImage? = nil,
                trackTintColor: UIColor? = nil,
                trackImage: UIImage? = nil) {
        self.progressViewStyle = progressViewStyle
        self.progressImage = progressImage
        self.trackTintColor = trackTintColor
        self.trackImage = trackImage
    }
    
    public static func +=(lhs: inout ProgressViewStyle, rhs: ViewStyle) {
        var viewStyle = lhs as ViewStyle
        viewStyle += rhs
    }
}

extension UIProgressView {
    public func apply(style: ProgressViewStyle) {
        super.apply(style: style)
        self.progressViewStyle = style.progressViewStyle
        style.progressTintColor.whenNotNil { self.progressTintColor = $0 }
        style.progressImage.whenNotNil { self.progressImage = $0 }
        style.trackTintColor.whenNotNil { self.trackTintColor = $0 }
        style.trackImage.whenNotNil { self.trackImage = $0 }
    }
}
