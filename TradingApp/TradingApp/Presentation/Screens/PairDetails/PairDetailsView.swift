//
//  PairDetailsView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 14.09.22.
//

import SwiftUI

struct PairDetailsView: View {
    
    @ObservedObject var viewModel: PairDetailsViewModel
    @ObservedObject var output: PairDetailsViewModel.Output
    
    init(viewModel: PairDetailsViewModel) {
        let input = PairDetailsViewModel.Input()
        
        self.viewModel = viewModel
        self.output = viewModel.transform(input)
    }
    
    var body: some View {
        Text(viewModel.model.altname)
    }
}

//struct PairDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PairDetailsView(viewModel: PairDetailsViewModel())
//    }
//}
