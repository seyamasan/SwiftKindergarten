//
//  Lesson1View.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct Lesson1View: View {
    @State private var lesson1 = Lesson1()
    
    var body: some View {
        Text(self.lesson1.constText1)
        .navigationTitle("Lesson1")
    }
}

#Preview {
    Lesson1View()
}
