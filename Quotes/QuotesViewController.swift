//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Matteo Manferdini on 18/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	let dataSource: QuotesDataSource = .init(quotes: Quote.quotes)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = dataSource
		tableView.reloadData()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		if let indexPath = tableView.indexPathForSelectedRow {
			tableView.deselectRow(at: indexPath, animated: true)
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let row = tableView.indexPathForSelectedRow?.row {
			let selectedQuote = dataSource.quotes[row]
			(segue.destination as? DetailViewController)?.quote = selectedQuote
		}
	}
}

