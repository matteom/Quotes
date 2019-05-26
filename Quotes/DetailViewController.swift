//
//  DetailViewController.swift
//  Quotes
//
//  Created by Matteo Manferdini on 28/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	@IBOutlet weak var textLabel: UILabel!
	@IBOutlet weak var authorLabel: UILabel!
	
	var quote: Quote?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		textLabel.text = quote?.text.quoteFormatted
		authorLabel.text = quote?.author.authorFormatted
	}
}

extension String {
	var authorFormatted: String {
		return "― " + self
	}
	
	var quoteFormatted: String {
		return "“" + self + "”"
	}
}
