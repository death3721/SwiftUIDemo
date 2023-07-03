//
//  ContentView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/06/27.
//

import SwiftUI

struct ContentView: View {
    var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            VStack {
                List(items, id: \.self) { item in
                    HStack {
                        Image(systemName: "applelogo")
                            .onTapGesture {
                                print(item)
                            }
                        Text(item)
                        Spacer()
                        Text("Placeholder")
                            .padding(.trailing)
                            
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
                        print("aa")
                    } label: {
                        Image(systemName: "shazam.logo.fill")
                            .foregroundColor(.white)
                    }
            )
            .toolbar {
                Button {
                    print("bb")
                } label: {
                    Image(systemName: "gamecontroller")
                        .foregroundColor(.white)
                }
                Button {
                    print("cc")
                } label: {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func testFunction() {
    print("test")
}

