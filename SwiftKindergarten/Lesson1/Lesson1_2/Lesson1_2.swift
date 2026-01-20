//
//  Lesson1_2.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2026/01/18.
//

import Foundation

class Lesson1_2 {
    init() {
        print("\(self) initialized")
    }
    
    deinit {
        print("\(self) deinitialized")
    }
    
    func showGarbledText() {
        let text = "こんにちは"
        let data = text.data(using: .utf8)! // UTF-8を使ってエンコード

        // Shift JISを使ってUnicodeに変換した文字列
        if let broken = String(data: data, encoding: .shiftJIS) {
            print("Shift JISでエンコードした文字列: \(broken)")
        }
    }
    
    func showMaxAndMinInt() {
        // uname -m をターミナルで実行すると確認できる
        // 作者のMacのプロセッサは、x86_64で64bitなので
        let maxInt64: Int = 9223372036854775807
        let minInt64: Int = -9223372036854775808
        print("Intの最大値: \(maxInt64), 最小値: \(minInt64)")
        
        // オーバーフロー 64bit
//        let overflowMaxInt64: Int = 9223372036854775808
//        let overflowMinInt64: Int = -9223372036854775809
        
        // 32bitの場合
//        let maxInt32: Int = 2147483647
//        let minInt32: Int = -2147483648
//        print("Intの最大値: \(maxInt32), 最小値: \(minInt32)")
        
        // オーバーフロー 32bit
//        let overflowMaxInt32: Int = 2147483648
//        let overflowMinInt32: Int = -2147483649
    }
}
