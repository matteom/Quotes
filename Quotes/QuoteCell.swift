//
//  QuoteCell.swift
//  Quotes
//
//  Created by Matteo Manferdini on 18/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class QuoteCell: UITableViewCell {
	@IBOutlet private weak var quoteLabel: UILabel!
	@IBOutlet private weak var authorLabel: UILabel!
	
	var author: String? {
		didSet { authorLabel.text = author?.authorFormatted ?? "" }
	}
	
	var quoteText: String? {
		didSet { quoteLabel.text = quoteText?.quoteFormatted ?? "" }
	}
}
