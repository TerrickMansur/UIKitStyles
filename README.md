# UIKitStyles

UIKitStyles is simple styling library that groups the attributes of our beloved `UIKit` objects together in a class so that you can easy share styles across the project/projects and apply them to your `UIKit` objects with one line of code. 

The architecture is very simple:

The view's “Hierarchy and Composition” must match the Style class's “Hierarchy and Composition”. 

This means that _for each UIKit object we will have one matching Style class_. The class is named as the object (withouth the UI infront), followed by “Style” suffix. To make application of the style simple, UIKitStyles provides an extension on the `UIKit` object providing a function called `apply` that takes in the Style class associated with it, in order to set the `UIKit` object its attributes. 

Example: 

    open class LabelStyle: ViewStyle {
    
        open var textColor: UIColor? = nil
        open var textAlignment: NSTextAlignment? = nil
        open var font: UIFont? = nil
        open var numberOfLines: Int? = nil
    
        public override init() {
            super.init()
        }
    }
    
    extension Label {
    
       open func apply(style: LabelStyle) {
            super.apply(style: style)
            
            style.textColor.whenNotNil { textColor = $0 }
            
            style.textAlignment.whenNotNil { textAlignment = $0 }
            
            style.font.whenNotNil { font = $0 }
            
            style.numberOfLines.whenNotNil { numberOfLines = $0 }
        }
    }

All attributes in the Style classes are optional and nil by default. The reason for this is because if the user does not set the attribute, we don’t want to overwrite it, it will stay as UIKit its default value. 

 Please follow this patterns for every style class. Note: You should not add an attribute to the style class if this attribute **does not exist in the corresponding UIKit object**. For example; you would not add a backgroundImage in the UILabelStyle class since a UILabel does not have a backgroundImage. You would also not add a backgroundColor in UILabelStyle class since it is UIView that owns the backgroundColor attribute and not the UILabel, meaning the backgroundColor should be in UIViewStyle. 

No custom code or styling should be done in these classes. If you want to have a subclass of UIView or add an extension that does custom behaviour like adding a top separator, a gradient, these class/extensions will need a separate style class. It's style class would inherit from UIViewStyle (this will already give you everything that can be applied on UIView), and add any additional attributes your view needs in this new style class. 

* (There might be missing attributes in the UIKitStyles classes, feel free to add them, this is a work in progress)
