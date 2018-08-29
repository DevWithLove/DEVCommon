//
//  StringExtensions.swift
//  DEVCommon
//
//  Created by Tony Mu on 2018/8/29.
//  Copyright © 2018 Tony Mu. All rights reserved.
//

import UIKit

extension String {

  public var doubleValue: Double {
    guard let value = Double(self) else {
      return 0.0
    }
    return value
  }
}
