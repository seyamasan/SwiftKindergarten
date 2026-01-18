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
}
