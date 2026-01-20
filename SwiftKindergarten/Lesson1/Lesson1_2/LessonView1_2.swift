//
//  LessonView1_2.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2026/01/14.
//

import SwiftUI

struct LessonView1_2: View {
    @State var lesson: Lesson1_2?
    
    var body: some View {
        VStack(spacing: 32) {
            Button("💥 文字化けした文字列を出力") {
                self.lesson?.showGarbledText()
            }
            Divider()
            Button("#️⃣ Intの最大値と最小値を出力") {
                self.lesson?.showMaxAndMinInt()
            }
        }
        .navigationTitle("Lesson 1-2")
        .task {
            self.lesson = Lesson1_2()
        }
    }
}

#Preview {
    LessonView1_2()
}
