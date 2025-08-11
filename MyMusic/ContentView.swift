//
//  ContentView.swift
//  MyMusic
//
//  Created by takahiro kakisu on 2025/08/11.
//

import SwiftUI

struct ContentView: View {
    // 音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            Image(.background)
            // リサイズする
                .resizable()
            // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
                .ignoresSafeArea()
            // アスペクト比（縦横比）を維持して短編基準に収まるようにする
                .scaledToFill()
            
            HStack {
                // シンバルボタン
                Button {
                    // ボタンをタップした時のアクション
                    soundPlayer.cymbalPlay()
                } label: {
                    Image(.cymbal)
                }
                
                // ギターボタン
                Button {
                    // ボタンをタップした時のアクション
                    soundPlayer.guitarPlay()
                } label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
