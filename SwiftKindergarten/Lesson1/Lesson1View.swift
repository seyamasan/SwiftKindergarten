//
//  Lesson1View.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct Lesson1View: View {
    @State private var lesson1: Lesson1?
    
    var body: some View {
        VStack(spacing: 32) {
            Text("\(self.lesson1?.getConstText2() ?? "")を表示しています。")
            Divider()
            Text("\(self.lesson1?.getCount() ?? 0)回変更されたプライベートメンバ変数")
            Button("カウントする") {
                self.lesson1?.increment()
            }
            Divider()
            Text("\(Lesson1Static.staticConstText)を表示しています。")
        }
        .task {
            self.lesson1 = Lesson1()
        }
        .navigationTitle("Lesson1")
    }
}

#Preview {
    Lesson1View()
}
