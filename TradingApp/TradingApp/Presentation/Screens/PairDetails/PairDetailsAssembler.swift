//
//  PairDetailsAssembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation

protocol PairDetailsAssembler {
    func resolve(model: TradingAssetPair) -> PairDetailsView
}


extension TemplateAssembler {
    func resolve(model: TradingAssetPair) -> PairDetailsView {
        let vm = PairDetailsViewModel(model: model)
        return PairDetailsView(viewModel: vm)
    }
}
