//
//  AppCompositionRoot.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation
import SwiftUI

final class AppCompositionRoot {
    
    static let assembler = DefaultAssembler()
    
    public static var start: some View {
        return assembler.resolve(HomeView.self)
    }
}
