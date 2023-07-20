//
//  Widget_Navigation.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/09.
//

import SwiftUI

struct Widget_Navigation: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle("Title")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Button {
                            print("Avatar")
                        } label: {
                            Image(systemName: "apple.logo")
                                .foregroundColor(.blue)
                        },
                    trailing:
                        Button {
                            print("Avatar")
                        } label: {
                            Image(systemName: "apple.logo")
                                .foregroundColor(.blue)
                        }
                )
            // toolbar只有右边工具栏 可以多个排列
                .toolbar {
                    Button {
                        print("GameCenter")
                    } label: {
                        Image(systemName: "gamecontroller")
                            .foregroundColor(.blue)
                    }
                }
        }
    }
}

struct Widget_Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Widget_Navigation()
    }
}
