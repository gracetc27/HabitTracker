//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var goalDescription = ""
    @State private var count = 0
    

    var habits = Habits()

    var body: some View {
        NavigationStack {
            Form {
                Section("Habit name") {
                    TextField("Enter name", text: $name)
                }
                Section("Goal description") {
                    TextField("Enter description", text: $goalDescription)
                }
            }
            .toolbar {
                Button("Save") {
                    let item = Activity(name: name, goalDescription: goalDescription, count: count)
                    habits.activities.append(item)
                    dismiss()
                }
            }
            .navigationTitle("Add new habit")
            .navigationBarBackButtonHidden()
        }

    }
}


#Preview {
    AddHabitView()
}
