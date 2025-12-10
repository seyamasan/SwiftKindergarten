//
//  Lesson1View.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct Lesson1View: View {
    @State private var lesson1 = Lesson1()
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 32) {
            Text("\(self.count)回変更された\(self.lesson1.getVarText2())")
            Button("変更する") {
                self.count += 1
            }
        }
        .navigationTitle("Lesson1")
    }
}

#Preview {
    Lesson1View()
}
