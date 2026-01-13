//
//  Lesson1View.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct LessonView1_1: View {
    @State var cart: ShoppingCart?
    let priceList: [Double] = [100, 200, 300, 400]
    
    var body: some View {
        VStack(spacing: 32) {
            Button("💴計算結果を出力する1") {
                print(self.cart?.summary1(priceList: self.priceList) ?? "0")
            }
            Divider()
            Button("🛒カートに入れる") {
                self.cart?.addItem(price: 100)
            }
            Button("💴計算結果を出力する2") {
                print(self.cart?.summary2() ?? "0")
            }
        }
        .navigationTitle("Lesson 1-1")
        .task{
            // なぜか宣言時にインスタンス化するとメモリリークするので
            self.cart = ShoppingCart()
        }
    }
}

#Preview {
    LessonView1_1()
}
