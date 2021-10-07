//
//  StockListViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Violeta Recio Sansón on 6/10/21.
//

import Foundation


class StockListViewModel: ObservableObject {

	@Published var searchTerm: String = ""
	@Published var stocks: [StockViewModel] = [StockViewModel]()

	func load() {
		fetchStocks()
	}

	private func fetchStocks() {
		Webservice().getStocks { stocks in
			if let stocks = stocks {
				DispatchQueue.main.async {
					self.stocks = stocks.map(StockViewModel.init)
				}
			}
		}
	}
}
