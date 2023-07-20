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
    let height: CGFloat = 66
    
    // 3. Get mock cards data
    let cards: [String] = ["Navigation", "Section", "colors", "dumps", "fire"]
    
    var body: some View {
        @State var isNavPush = false
        
        NavigationView {
            ScrollView {
                // 4. Populate into grid
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(cards, id: \.self) { card in
                        CardView(title: card)
                            .frame(height: height)
                            .onTapGesture {
                                switch card {
                                case "Navigation":
                                    print("Navigation")
                                case "Section":
                                    print("Section")
                                   
                                case "colors":
                                    print("colors")
                                default:
                                    print("default")
                                }
                                
                            }
                        NavigationLink("aaa") {
                            Widget_Form()
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle("Widget Collection", displayMode: .inline)
        }
        
    }
}

struct WidgetCollection_Previews: PreviewProvider {
    static var previews: some View {
        WidgetCollection()
    }
}
