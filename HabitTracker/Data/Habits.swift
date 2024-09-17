//
//  Habits.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//
import SwiftUI

@Observable
class Habits {
    var activities = [Activity]() {
        didSet {
            if let encoded =  try? JSONEncoder().encode(activities) {
                UserDefaults.standard.setValue(encoded, forKey: "Activities")
            }
        }
    }
    
    init() {
        if 
            let savedItems = UserDefaults.standard.data(forKey: "Activities"),
            let decodedItems = try? JSONDecoder().decode([Activity].self, from: savedItems) {
            activities = decodedItems
        } else {
            activities = []
        }
    }
}
