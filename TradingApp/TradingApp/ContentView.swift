//
//  ContentView.swift
//  TradingApp
//
//  Created by Christian Slanzi on 31.08.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView(viewModel: HomeViewModel(pairsCase: LoadTradingAssetPairsUseCase(krakenRepository: KrakenRepository(apiClient: KrakenAPI()))))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
