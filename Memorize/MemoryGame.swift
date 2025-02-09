//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Piers Hall on 09/02/2025.
//

import Foundation
// This is the model
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        // add numberOfPairsOfCards x 2 cards
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))

        }
    }
    
    mutating func shuffle() {
        cards.shuffle()
        print(cards)
    }
    
    func choose(_ card: Card) {
    
    }
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        let content: CardContent
    }
}
