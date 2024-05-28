//
//  UIFont + Extension.swift
//  FoodDeliveryApp
//
//  Created by lukoom on 25.05.2024.
//

import UIKit

extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.black, size: size)!
            }
        }
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.thin, size: size)!
            }
        }
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.bold, size: size)!
            }
        }
        enum blackItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.blackItalic, size: size)!
            }
        }
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.italic, size: size)!
            }
        }
        enum lightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.lightItalic, size: size)!
            }
        }
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.boldItalic, size: size)!
            }
        }
        enum thinItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.thinItalic, size: size)!
            }
        }
        enum mediumItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.mediumItalic, size: size)!
            }
        }
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.regular, size: size)!
            }
        }
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.light, size: size)!
            }
        }
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constans.Roboto.medium, size: size)!
            }
        }
    }
    
}


private extension UIFont {
    enum Constans {
        enum Roboto {
            static let black = "Roboto-Black"
            static let thin = "Roboto-Thin"
            static let bold = "Roboto-Bold"
            static let blackItalic = "Roboto-BlackItalic"
            static let italic = "Roboto-Italic"
            static let lightItalic = "Roboto-LightItalic"
            static let boldItalic = "Roboto-BoldItalic"
            static let thinItalic = "Roboto-ThinItalic"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let light = "Roboto-Light"
            static let medium = "Roboto-Medium"
        }
    }
}
