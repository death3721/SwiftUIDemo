//
//  WidgetCollection.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/05.
//

import SwiftUI

struct WidgetCollection: View {
    // 1. Number of items will be display in row
    var columns: [GridItem] = [
        GridItem(
            .flexible()
        ),
        GridItem(
            .flexible()
        )
    ]
    // 2. Fixed height of card
    let height: CGFloat = 200
    // 3. Get mock cards data
    let cards: [String] = ["abstruct", "bullent", "colors", "dumps", "fire"]
    
    var body: some View {
        ScrollView {
            // 4. Populate into grid
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(cards, id: \.self) { card in
                    CardView(title: card)
                        .frame(height: height)
                }
            }
            .padding()
        }
    }
}

struct WidgetCollection_Previews: PreviewProvider {
    static var previews: some View {
        WidgetCollection()
    }
}
