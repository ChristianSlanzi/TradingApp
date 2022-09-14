//
//  Assembler.swift
//  TradingApp
//
//  Created by Christian Slanzi on 05.09.22.
//

import Foundation

protocol Assembler: AnyObject,
    HomeAssembler,
    TradeAssembler,
    BalancesAssembler,
    AccountAssembler,
    PairDetailsAssembler
{
    
}

// when the DefaultAssembler is getting too big:
// - decompose the assembler in multiple flow assemblers (code complexity)
// - lazy initialization (some objects will be created at startup, other ones only when needed)

final class DefaultAssembler: Assembler {
    // KEEPS DEFAULT OBJECTS
}
