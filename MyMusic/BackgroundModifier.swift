//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by takahiro kakisu on 2025/08/11.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        // 画像を表示するImageのインスタンス
        self
        // リサイズする
            .resizable()
        // 画面いっぱいになるようにセーフエリア外まで表示されるように指定
            .ignoresSafeArea()
        // アスペクト比（縦横比）を維持して短編基準に収まるようにする
            .scaledToFit()
    }
}
