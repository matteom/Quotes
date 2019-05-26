//
//  QuotesDataSource.swift
//  Quotes
//
//  Created by Matteo Manferdini on 18/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class QuotesDataSource: NSObject {
	let quotes: [Quote]
	
	init(quotes: [Quote]) {
		self.quotes = quotes.sorted(by: <)
	}
}

extension QuotesDataSource: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return quotes.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuoteCell.self), for: indexPath) as! QuoteCell
		let quote = quotes[indexPath.row]
		cell.author = quote.author
		cell.quoteText = quote.text
		return cell
	}
}
