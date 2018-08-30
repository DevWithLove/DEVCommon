//
//  UIFontExtension.swift
//  DemoApp
//
//  Created by Tony Mu on 28/02/2018.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

public extension UIFont {
  
  public static var TitilliumWeb: TitilliumWebFont {
    return TitilliumWebFont()
  }
  
  static func loadCustomFont(name: String) ->UIFont {
    guard let customFont = UIFont(name: name, size: UIFont.labelFontSize) else {
      fatalError("Failed to load the \(name) font.")
    }
    return customFont
  }
}

fileprivate protocol CustomFont {
  var familyName: String {get}
}

public struct TitilliumWebFont: CustomFont {
  var familyName: String
  
  init() {
    familyName = "TitilliumWeb"
  }
  
  public var regular: UIFont {
    return UIFont.loadCustomFont(name:  "\(familyName)-Regular")
  }
  
  public var light: UIFont {
    return UIFont.loadCustomFont(name:  "\(familyName)-Light")
  }
  
  public var SemiBold: UIFont {
    return UIFont.loadCustomFont(name:  "\(familyName)-SemiBold")
  }
}

public struct Icon: CustomFont {
  var familyName: String
  
  init() {
    familyName = "FontAwesome"
  }
  
  public var regular: UIFont {
    return UIFont.loadCustomFont(name:  "\(familyName)")
  }
}


