//
//  HabitListView.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//

import SwiftUI

struct HabitListView: View {
    @State private var habits = Habits()
    @State private var isSheetPresent = false

    var body: some View {
        NavigationStack {
            List {
                ForEach($habits.activities) { $item in
                    NavigationLink(destination: HabitDetailView(activity: $item)) {
                        ListItemView(name: item.name, count: item.count)
                    }
                }
            }
            .sheet(isPresented: $isSheetPresent) {
                AddHabitView(habits: habits)
            }
            .navigationTitle("HabitTracker")
            .toolbar {
                NavigationLink("Add activity", destination: AddHabitView(habits: habits))
            }
        }
    }
}

#Preview {
    
    HabitListView()
}
