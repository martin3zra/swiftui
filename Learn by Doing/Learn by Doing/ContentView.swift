//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Alfredo Martinez on 5/17/20.
//  Copyright © 2020 Alfredo Martinez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var cards: [Card] = cardData
    
    //MARK: - Content
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20, content: {
                ForEach(cards, id: \.id) { card in
                    CardView(card: card)
                }
            })
            .padding(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
        .previewDevice("iPhone 11 Pro")
    }
}
