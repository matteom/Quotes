//
//  AuthorsViewController.swift
//  Quotes
//
//  Created by Matteo Manferdini on 26/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class AuthorsViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!
	let dataSource: AuthorsDataSource = .init(quotes: Quote.quotes)

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = dataSource
		tableView.sectionIndexColor = UIColor(named: "Haverlock Blue")
		tableView.reloadData()
	}
}

extension AuthorsViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let view = UINib(nibName: "SectionHeader", bundle: nil).instantiate(withOwner: nil, options: nil).first as? AuthorHeaderView
		view?.author = dataSource.authors[section]
		return view
	}
	
	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 33.0
	}
}

class AuthorHeaderView: UIView {
	@IBOutlet private weak var label: UILabel!
	
	var author: String? {
		didSet { label.text = author }
	}
}
