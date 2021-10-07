//
//  Stock.swift
//  StocksAppSwiftUI
//
//  Created by Violeta Recio Sansón on 6/10/21.
//

import Foundation


struct Stock: Decodable {
	let symbol: String
	let description: String
	let price: Double
	let change: String
}
