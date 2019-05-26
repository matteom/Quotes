//
//  Quote.swift
//  Quotes
//
//  Created by Matteo Manferdini on 18/05/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import Foundation

struct Quote {
	let author: String
	let text: String
}

extension Quote: Comparable {
	static func < (lhs: Quote, rhs: Quote) -> Bool {
		if lhs.author < rhs.author { return true }
		else { return lhs.author == rhs.author && lhs.text < rhs.text }
	}
}

extension Quote {
	static let quotes: [Quote] = [
		.init(author: "Jordan B. Peterson", text: "The purpose of life is finding the largest burden that you can bear and bearing it."),
		.init(author: "Fyodor Dostoevsky", text: "To go wrong in one's own way is better than to go right in someone else's."),
		.init(author: "Albert Einstein", text: "Two things are infinite: the universe and human stupidity; and I am not sure about the universe."),
		.init(author: "Fyodor Dostoevsky", text: "To go wrong in one's own way is better than to go right in someone else's."),
		.init(author: "Lao Tzu", text: "The journey of a thousand miles begins with a single step."),
		.init(author: "Steve Jobs", text: "Design is not just what it looks like and feels like. Design is how it works."),
		.init(author: "Jordan B. Peterson", text: "You're going to pay a price for every bloody thing you do and everything you don't do. You don't get to choose to not pay a price. You get to choose which poison you're going to take. That's it."),
		.init(author: "Fyodor Dostoevsky", text: "Above all, don't lie to yourself. The man who lies to himself and listens to his own lie comes to a point that he cannot distinguish the truth within him, or around him, and so loses all respect for himself and for others. And having no respect he ceases to love."),
		.init(author: "George Orwell", text: "In a time of deceit telling the truth is a revolutionary act."),
		.init(author: "Lao Tzu", text: "A good traveler has no fixed plans and is not intent on arriving."),
		.init(author: "Allen Saunders", text: "Life is what happens to you while you’re busy making other plans."),
		.init(author: "Leo Tolstoy", text: "Can it be that I have not lived as one ought?\" suddenly came into his head. \"But how not so, when I've done everything as it should be done?"),
		.init(author: "Oscar Wilde", text: "Be yourself; everyone else is already taken."),
		.init(author: "Mikhail Bulgakov", text: "But would you kindly ponder this question: What would your good do if evil didn't exist, and what would the earth look like if all the shadows disappeared? After all, shadows are cast by things and people. Here is the shadow of my sword. But shadows also come from trees and living beings. Do you want to strip the earth of all trees and living things just because of your fantasy of enjoying naked light? You're stupid."),
		.init(author: "Oscar Wilde", text: "To live is the rarest thing in the world. Most people exist, that is all."),
		.init(author: "Mae West", text: "You only live once, but if you do it right, once is enough."),
		.init(author: "Mark Twain", text: "If you tell the truth, you don't have to remember anything."),
		.init(author: "Ralph Waldo Emerson", text: "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment."),
		.init(author: "George Orwell", text: "Who controls the past controls the future. Who controls the present controls the past."),
		.init(author: "Douglas Hofstadter", text: "Hofstadter's Law: It always takes longer than you expect, even when you take into account Hofstadter's Law."),
		.init(author: "Timothy Ferriss", text: "But you are the average of the five people you associate with most, so do not underestimate the effects of your pessimistic, unambitious, or disorganized friends. If someone isn't making you stronger, they're making you weaker."),
	]
}
