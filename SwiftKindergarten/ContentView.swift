//
//  ContentView.swift
//  SwiftKindergarten
//
//  Created by 瀬山皐太 on 2025/12/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        LessonView1_1()
                    } label: {
                        LessonRow(
                            title: "Lesson 1-1",
                            subtitle: "定数と変数について"
                        )
                    }
                } header: {
                    Text("Lesson 1")
                }
            }
            .navigationTitle("✏️ ホーム")
        }
    }
}

struct LessonRow: View {
    let title: String
    let subtitle: String

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(self.title)
                .font(.headline)
            Text(self.subtitle)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    ContentView()
}
