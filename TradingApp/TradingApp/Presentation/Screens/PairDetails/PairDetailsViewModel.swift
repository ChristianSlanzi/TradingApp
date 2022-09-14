//
//  TemplateViewModel.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import Foundation
import Combine

final class PairDetailsViewModel: ObservableObject {

    private var cancelBag = Set<AnyCancellable>()
    
    /*private*/ let model: TradingAssetPair
    
    // Input
    struct Input {
    }
    
    // Output
    final class Output: ObservableObject {
        // let assetPairName: String
    }
    
    // MARK: - Init
    
//    init(useCase: UseCaseType) {
//        self.useCase = useCase
//    }
    
    internal init(model: TradingAssetPair) {
        self.model = model
    }
    
    func transform(_ input: Input) -> Output {
        
        let output = Output()

        // TODO: - map input and use cases to output

        return output
    }
}

// Redux pattern: reducer that transform the current state into ouput given an input
