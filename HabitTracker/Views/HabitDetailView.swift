//
//  HabitDetailView.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//

import SwiftUI

struct HabitDetailView: View {
    @Binding var activity: Activity

    var body: some View {
        NavigationStack {
            VStack {
                Text(activity.description)
                Text(activity.count, format: .number)
                Button("Record practice") {
                    activity.count += 1
                }
            }
            .navigationTitle(activity.name)
        }
    }
}



#Preview {
    @Previewable @State var activity = Activity(name: "Violin",
                                                description: "Practice for orchestra",
                                                count: 1)
    HabitDetailView(activity: $activity)
}
