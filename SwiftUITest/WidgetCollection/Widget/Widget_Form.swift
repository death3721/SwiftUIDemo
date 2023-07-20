//
//  Widget_Form.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/12.
//

import SwiftUI

struct Widget_Form: View {
    @State var isTestOn = true
    var body: some View {
        Form {
            Section ("Section") {
                Toggle(isOn: $isTestOn) {
                    Label("test", systemImage: "moon")
                    
                }
                // 用来监听该控件值改变时用的方法
                .onChange(of: isTestOn) { newValue in
                    print(newValue)
                }
                
                Label("test", systemImage: "moon")
            }
            
            Section ("Section") {
                Label("test", systemImage: "moon")
            }
        }
    }
}

struct Widget_Form_Previews: PreviewProvider {
    static var previews: some View {
        Widget_Form()
    }
}
