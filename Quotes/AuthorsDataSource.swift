//
//  AuthorsDataSource.swift
//  Quotes
//
//  Created by Matteo Manferdini on 26/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class AuthorsDataSource: NSObject {
	private var sections: [String: [Quote]] = [:]
	
	var authors: [String] {
		return sections.keys.sorted()
	}
	
	var indexes: [String] {
		return authors
			.map { String($0.first!) }
			.reduce(into: Set<String>(), { $0.insert($1) })
			.sorted()
	}
	
	init(quotes: [Quote]) {
		for quote in quotes.sorted(by: <) {
			let author = quote.author
			if var quotes = sections[author] {
				quotes.append(quote)
				sections[author] = quotes
			} else {
				sections[author] = [quote]
			}
		}
	}
}

extension AuthorsDataSource: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return sections.count
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let author = authors[section]
		return sections[author]?.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuoteCell.self)) as! QuoteCell
		let author = authors[indexPath.section]
		let quote = sections[author]?[indexPath.row]
		cell.quoteText = quote?.text
		return cell
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return authors[section]
	}
	
	func sectionIndexTitles(for tableView: UITableView) -> [String]? {
		return indexes
	}
	
	func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
		return authors.firstIndex(where: { $0.hasPrefix(title) }) ?? 0
	}
}
