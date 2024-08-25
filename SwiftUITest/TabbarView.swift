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
            
            WidgetCollection()
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.3x1.folder.badge.plus")
                        Text("Collection")
                    }
                }.tag(2)
            
            WidgetTableView()
                .tabItem {
                    VStack {
                        Image(systemName: "square.grid.3x1.folder.badge.plus")
                        Text("TableView")
                    }
                }.tag(3)
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }.tag(4)
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
