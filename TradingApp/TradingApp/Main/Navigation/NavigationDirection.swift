//
//  NavigationDirection.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

enum NavigationStyle {
    case push
    case present
}

enum NavigationDirection: Equatable {
    case back
    case forward(destination: NavigationDestination, style: NavigationStyle)

    static func == (lhs: NavigationDirection, rhs: NavigationDirection) -> Bool {
        switch (lhs, rhs) {
        case (.back, .back):
            return true
        default:
            return false
        }
    }
}
