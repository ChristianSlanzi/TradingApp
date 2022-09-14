//
//  NavigationViewFactory.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation
import SwiftUI

class NavigationViewFactory {
    
    let assembler: Assembler = DefaultAssembler()
    
    @ViewBuilder
    func makeView(_ destination: NavigationDestination) -> some View {
        switch destination {
        case .home:
            EmptyView()
        case .pairDetails(let model):
            assembler.resolve(model: model)
        }
    }
}
