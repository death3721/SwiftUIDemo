//
//  ProfileView.swift
//  SwiftUITest
//
//  Created by death3721 on 2023/07/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            HStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 50, height: 60, alignment: .leading)
                    .padding(20)
                
                VStack (alignment: .leading, content: {
                    Text("ヨウ       イーメイ")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .frame(alignment: .leading)
                    Text("Yang Yiming")
                        .font(.title)
                        .fontWeight(.heavy)
                        
                    
                        
                    Text("iOS Developer")
                })
                
                
            }.padding()
//            Spacer()
            Text("自分紹介")
                .font(.title3)
                .bold()
            Text("2020年、中国から日本にきました、今年は4年目です。開発経験は9（きゅう）年以上があります。得意な技術はObjective-CとSwiftです。Flutterも経験があります。いままで、ずっとiOSの開発について仕事をしましたので、アプリ開発に自信があります。Androidも改修(かいしゅう)経験があります。履歴書の１番から６番は日本に対応したプロジェクトです。直近（ちょっきん）のプロジェクトは楽天payの新規（しんき）機能開発です。チームメンバーは5名です。私の仕事は、QR支払い方法の機能を開発すると既存機能のエラー対応です。以上です。宜しくお願い致します。")
                .padding()
            
            
                .navigationTitle("個人履歴")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
