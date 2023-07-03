//
//  TabbarView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/03.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("首页")
                    }
            }.tag(1)
//            TabBView()
//                .tabItem {
//                    VStack {
//                        Image(systemName: "bold")
//                        Text("TabB")
//                    }
//            }.tag(2)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
