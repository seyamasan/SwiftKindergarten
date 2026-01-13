//
//  ShoppingCart.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2026/01/13.
//

class ShoppingCart {
    // メンバ定数
    private let taxRate: Double = 0.10
    private let currency: String = "¥"

    // メンバ変数
    private var items: [Double] = []
    
    init() {
        print("\(self) initialized")
    }
    
    deinit {
        print("\(self) deinitialized")
    }
    
    func addItem(price: Double) {
        self.items.append(price)
    }
    
    func summary1(priceList: [Double]) -> String {
        // ローカル定数（不変のパラメータ）
        let localTaxRate = 0.10 // 10%の消費税
        let localCurrency = "¥" // 表示用の通貨記号
        
        // ローカル変数（計算過程で値が変わる）
        var subtotal = 0.0
        priceList.forEach {
            subtotal += $0
        }
        
        let tax = subtotal * localTaxRate
        let total = subtotal + tax
        
        return "\(subtotal) + 税\(tax) = \(localCurrency)\(total)"
    }
    
    func summary2() -> String {
        var subtotal = 0.0
        self.items.forEach {
            subtotal += $0
        }
        
        let tax = subtotal * self.taxRate
        let total = subtotal + tax
        
        return "\(subtotal) + 税\(tax) = \(self.currency)\(total)"
    }
}
