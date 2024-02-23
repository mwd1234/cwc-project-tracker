//
//  cwc_project_trackerApp.swift
//  cwc-project-tracker
//
//  Created by Matthew Dembinski on 2/22/24.
//

import SwiftUI
import SwiftData

@main
struct DBProjectTracker: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
