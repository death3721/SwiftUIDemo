//
//  WidgetTableView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/17.
//

import SwiftUI

struct WidgetTableView: View {
    var body: some View {
        @State var presentedNumbers = [0]
        
        
        
        NavigationStack() {
            Form {
                Section ("Section") {
                    List(1..<6) { i in
                        NavigationLink(value: i) {
                            Label("Row \(i)", systemImage: "\(i).circle")
                        }
                    }
                    .navigationDestination(for: Int.self) { i in
                        Text("Detail \(i)")
                    }
                    .navigationTitle("Navigation")
                }
                
                Section ("Section") {
                    Text("test")
                }
            }
            .navigationBarTitle("WidgetTableView", displayMode: .inline)
        }
    }
}

struct WidgetTableView_Previews: PreviewProvider {
    static var previews: some View {
        WidgetTableView()
    }
}
