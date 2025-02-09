//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Piers Hall on 08/02/2025.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
