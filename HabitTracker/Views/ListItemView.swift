//
//  ListItemView.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//

import SwiftUI

struct ListItemView: View {
    var name: String
    var count: Int

    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text("Completed \(count) times")
        }
    }
}

#Preview {
    ListItemView(name: "Violin Practice", count: 4)
}
