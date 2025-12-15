//
//  Lesson1Model.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/09.
//
//  初心者向けに作っているため、あまり言語に依存しないような書き方にしています。

import Combine

class Lesson1Model: ObservableObject {
    // 修飾子をつけない場合はinternal
    // 同一モジュール内なら参照可能
    let constText1: String = "メンバ定数" // 定数なので再代入できない
    @Published var varText1: String = "メンバ変数" // 変数なので再代入できる
    
    // privateはこのクラスからのみ参照可能
    private let constText2: String = "プライベートメンバ定数"
    @Published private var count: Int = 0
    
    init() {
        print("\(self) initialized")
    }
    
    deinit {
        print("\(self) deinitialized")
    }
    
    func getConstText2() -> String {
        return self.constText2
    }
    
    func getCount() -> Int {
        return self.count
    }
    
    func increment() {
        self.count += 1
    }
}
