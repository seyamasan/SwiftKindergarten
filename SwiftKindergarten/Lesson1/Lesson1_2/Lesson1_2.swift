//
//  Lesson1_2.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2026/01/18.
//

import Foundation

struct MaxMinIntModel {
    let max: Int
    let min: Int
}

class Lesson1_2 {
    
    private let iterations = 10_000_000
    
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
    
    func clashOverflowInt() {
        let maxAndMinInt = self.getMaxAndMinInt()
        
        // どちらもクラッシュする
        _ = maxAndMinInt.max + 1
        _ = maxAndMinInt.min - 1
    }
    
    func calcFloatValue() {
        var result: Float = 0.0
        let start = Date()

        for _ in 0..<self.iterations {
            result += 1.0 / 3.0
        }
        
        let end = Date()
        let elapsed = end.timeIntervalSince(start) // 秒
        
        print("Float型で計算した結果:\(result)")
        print("\(elapsed)秒かかりました。")
    }
    
    func calcDoubleValue() {
        var result: Double = 0.0
        let start = Date()

        for _ in 0..<self.iterations {
            result += 1.0 / 3.0
        }
        
        let end = Date()
        let elapsed = end.timeIntervalSince(start)
        
        print("Double型で計算した結果:\(result)")
        print("\(elapsed)秒かかりました。")
    }
    
    private func getMaxAndMinInt() -> MaxMinIntModel {
        // uname -m をターミナルで実行すると確認できる
        // 作者のMacのプロセッサは、x86_64で64bitなので
        let maxInt64: Int = 9223372036854775807 // 最大値
        let minInt64: Int = -9223372036854775808 // 最小値
        
        // オーバーフロー 64bit
//        let overflowMaxInt64: Int = 9223372036854775808
//        let overflowMinInt64: Int = -9223372036854775809
        
        return MaxMinIntModel(max: maxInt64, min: minInt64)
        
        // 32bitの場合
//        let maxInt32: Int = 2147483647
//        let minInt32: Int = -2147483648
        
        // オーバーフロー 32bit
//        let overflowMaxInt32: Int = 2147483648
//        let overflowMinInt32: Int = -2147483649
        
//        return MaxMinIntModel(max: maxInt32, min: minInt32)
    }
}
