//
//  Activity.swift
//  HabitTracker
//
//  Created by Grace couch on 16/09/2024.
//
import SwiftUI

struct Activity: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    var count: Int
}
