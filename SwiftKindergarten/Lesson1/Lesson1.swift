//
//  Lesson1.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/09.
//
//  初心者向けに作っているため、あまり言語に依存しないような書き方にしています。

import SwiftUI

@Observable
class Lesson1 {
    // 修飾子をつけない場合はinternal
    // 同一モジュール内なら参照可能
    let constText1: String = "メンバ定数" // 定数なので再代入できない
    var varText1: String = "メンバ変数" // 変数なので再代入できる
    
    // privateはこのクラスからのみ参照可能
    private let constText2: String = "プライベートメンバ定数"
    private var varText2: String = "プライベートメンバ変数"
    
    static let staticConstText: String = "スタティックメンバ定数"
    static var staticVarText: String = "スタティックメンバ変数"
    
    func getConstText2() -> String {
        return self.constText2
    }
    
    func getVarText2() -> String {
        return self.varText2
    }
    
    func setVarText2(value: String) {
        self.varText2 = value
    }
}
