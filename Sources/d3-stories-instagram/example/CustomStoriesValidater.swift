//
//  CustomStoriesValidater.swift
//
//
//  Created by Igor Shelopaev on 05.07.2022.
//

import Foundation

/// Custom validator for stories
@available(iOS 15.0, macOS 12.0, tvOS 16.0, watchOS 10.0, *)
public struct CustomStoriesValidater: IStoriesValidater {
    /// Check stories
    /// - Parameter stories: Set of stories
    /// - Returns: Set of errors found while checking stories set
    public static func validate<T>(_ stories: [T]) -> [StoriesError] where T: IStory {
        var errors: [StoriesError] = []

        if let first = stories.first, first.duration < 0.5 {
            errors.append(.init(description: "The first story less than five seconds"))
        }

        return errors
    }
}
