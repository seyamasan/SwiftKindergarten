//
//  Lesson1View.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct LessonView1_1: View {
    @StateObject  private var model = Lesson1Model()
    
    var body: some View {
        VStack(spacing: 32) {
            Text("\(self.model.getConstText2())を表示しています。")
            Divider()
            Text("\(self.model.getCount())回変更されたプライベートメンバ変数")
            Button("カウントする") {
                self.model.increment()
            }
            Divider()
            Text("\(Lesson1Static.staticVarText)を表示しています。")
        }
        .navigationTitle("Lesson1")
    }
}

#Preview {
    LessonView1_1()
}
