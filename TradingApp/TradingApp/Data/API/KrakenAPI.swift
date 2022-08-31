//
//  KrakenAPI.swift
//  TradingApp
//
//  Created by Christian Slanzi on 31.08.22.
//

import Foundation
import Combine

protocol KrakenAPIType {
    func getTradableAssetsPairs() -> AnyPublisher<[String: TradingAssetPair], Error>
}

struct KrakenAPI: KrakenAPIType {
    
    let baseURL = "https://api.kraken.com/0/public"
    var cancelBag = Set<AnyCancellable>()
    
    struct DataResponse<T>: Decodable where T: Decodable {
        public let result: [String: T]
        public let error: [String]
    }
    
    func getTradableAssetsPairs() -> AnyPublisher<[String: TradingAssetPair], Error> {
        let url = URL(string: baseURL)!.appendingPathComponent("AssetPairs")
        
        let publisher = URLSession.shared.dataTaskPublisher(for: url)
        return publisher
            .map(\.data)
            .decode(type: DataResponse<TradingAssetPair>.self, decoder: JSONDecoder())
            .map { $0.result }
            .eraseToAnyPublisher()
    }
}
