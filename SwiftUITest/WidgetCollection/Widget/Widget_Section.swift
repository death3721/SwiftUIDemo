//
//  Widget_Section.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/12.
//

import SwiftUI

struct Widget_Section: View {
    @State var isOn = true
    
    var body: some View {
        Form {
            Section ("Section") {
                Text("test")
            }
            
            Section ("Section") {

            }
        }
    }
}

struct Widget_Section_Previews: PreviewProvider {
    static var previews: some View {
        Widget_Section()
    }
}
