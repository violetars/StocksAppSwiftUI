//
//  NewsArticleViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Violeta Recio Sansón on 7/10/21.
//

import Foundation


struct NewsArticleViewModel {
	let article: Article

	var imageURL: String {
		return self.article.imageURL
	}

	var title: String {
		return self.article.title
	}

	var publication: String {
		return self.article.publication.uppercased()
	}
}
