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
                VStack {
                    Button("Log activity", systemImage: "plus.circle.fill") {
                        activity.count += 1
                    }
                    .font(.largeTitle)
                    .padding(14)
                    .background(.orange)
                    .clipShape(.rect(cornerRadius: 20))
                }
                VStack(alignment: .leading) {
                    Text("Goal description:")
                        .font(.headline)
                    Text(activity.goalDescription)
                        .font(.subheadline)
                }
                Spacer()
                
                Text(activity.count, format: .number)
            }
            .navigationTitle(activity.name)
        }
    }
}





#Preview {
    @Previewable @State var activity = Activity(name: "Violin",
                                                goalDescription: "Practice for orchestra",
                                                count: 1)
    HabitDetailView(activity: $activity)
}
