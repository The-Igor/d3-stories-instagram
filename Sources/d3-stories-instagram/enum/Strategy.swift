//
//  Strategy.swift
//
//
//  Created by Igor Shelopaev on 23.06.2022.
//

import Foundation

/// Strategy for showing stories
@available(iOS 15.0, macOS 12.0, tvOS 16.0, watchOS 7.0, *)
public enum Strategy {
    /// Repeat stories
    case circle

    /// Show just once
    case once
}
