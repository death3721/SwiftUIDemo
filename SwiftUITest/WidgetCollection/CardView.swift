//
//  CardView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/06.
//

import SwiftUI

struct CardView: View {
    let title: String
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12).foregroundColor(.random)
           
            VStack(alignment: .leading) {
                Spacer()
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(height: 20)
                    .colorInvert()
                    .padding(.leading, 10)
                Text(title)
                    .font(.body)
                    .colorInvert()
                    .frame(height: 20)
                    .padding([.leading, .bottom], 10)
            }
            
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Hello world")
    }
}

extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
