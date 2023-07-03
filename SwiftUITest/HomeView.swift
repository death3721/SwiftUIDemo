//
//  HomeView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/06/27.
//

import SwiftUI

struct HomeView: View {
    var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            VStack {
                List(items, id: \.self) { item in
                    HStack {
                        Image(systemName: "applelogo")
                            .padding(.trailing)
                            .onTapGesture {
                                print(item)
                            }
                        VStack {
                            Text(item)
                            Text(item)
                        }
                        Spacer()
                        Text("Placeholder")
                    }
                }
            }
            
            // Set the title of the navigation bar
            .navigationBarTitle("My App")
            .toolbarBackground(Color.pink,for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                
                leading:
                    Button {
                        print("Avatar")
                    } label: {
                        Image(systemName: "apple.logo")
                            .foregroundColor(.white)
                    }
            )
            .toolbar {
                Button {
                    print("GameCenter")
                } label: {
                    Image(systemName: "gamecontroller")
                        .foregroundColor(.white)
                }
                Button {
                    print("Message")
                } label: {
                    //
                    Image(systemName: "envelope.badge")
                        .foregroundColor(.white)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    TextField("", text: .constant("")).textFieldStyle(RoundedBorderTextFieldStyle())
                        .cornerRadius(22)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

func testFunction() {
    print("test")
}

